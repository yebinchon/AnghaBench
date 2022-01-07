; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.i40e_veb** }
%struct.i40e_veb = type { i32, i32, %struct.i40e_pf* }

@ENOENT = common dso_local global i32 0, align 4
@I40E_MAX_VEB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*)* @i40e_veb_mem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_veb_mem_alloc(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_veb*, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %6 = load i32, i32* @ENOENT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @I40E_MAX_VEB, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 1
  %18 = load %struct.i40e_veb**, %struct.i40e_veb*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %18, i64 %20
  %22 = load %struct.i40e_veb*, %struct.i40e_veb** %21, align 8
  %23 = icmp ne %struct.i40e_veb* %22, null
  br label %24

24:                                               ; preds = %15, %11
  %25 = phi i1 [ false, %11 ], [ %23, %15 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %11

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @I40E_MAX_VEB, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %61

36:                                               ; preds = %29
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.i40e_veb* @kzalloc(i32 16, i32 %37)
  store %struct.i40e_veb* %38, %struct.i40e_veb** %4, align 8
  %39 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %40 = icmp ne %struct.i40e_veb* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %61

44:                                               ; preds = %36
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %46 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %47 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %46, i32 0, i32 2
  store %struct.i40e_pf* %45, %struct.i40e_pf** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %50 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %52 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %54 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %55 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %54, i32 0, i32 1
  %56 = load %struct.i40e_veb**, %struct.i40e_veb*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %56, i64 %58
  store %struct.i40e_veb* %53, %struct.i40e_veb** %59, align 8
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %44, %41, %33
  %62 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %63 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i40e_veb* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
