; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_put_lump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_put_lump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_lump_tracking = type { i32, i32*, i32 }

@I40E_PILE_VALID_BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_lump_tracking*, i32, i32)* @i40e_put_lump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_put_lump(%struct.i40e_lump_tracking* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_lump_tracking*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_lump_tracking* %0, %struct.i40e_lump_tracking** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @I40E_PILE_VALID_BIT, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %5, align 8
  %15 = icmp ne %struct.i40e_lump_tracking* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %5, align 8
  %19 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %72

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %54, %25
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %5, align 8
  %30 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %5, align 8
  %35 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %33, %27
  %44 = phi i1 [ false, %27 ], [ %42, %33 ]
  br i1 %44, label %45, label %57

45:                                               ; preds = %43
  %46 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %5, align 8
  %47 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %27

57:                                               ; preds = %43
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %5, align 8
  %63 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.i40e_lump_tracking*, %struct.i40e_lump_tracking** %5, align 8
  %69 = getelementptr inbounds %struct.i40e_lump_tracking, %struct.i40e_lump_tracking* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %60, %57
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %22
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
