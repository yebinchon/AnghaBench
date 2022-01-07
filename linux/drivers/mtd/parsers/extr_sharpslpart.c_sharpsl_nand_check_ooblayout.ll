; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_check_ooblayout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_check_ooblayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_region = type { i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @sharpsl_nand_check_ooblayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharpsl_nand_check_ooblayout(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_oob_region, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %1, %33, %70
  %10 = bitcast %struct.mtd_oob_region* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = call i32 @mtd_ooblayout_free(%struct.mtd_info* %11, i32 %12, %struct.mtd_oob_region* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %71

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 15
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %28, %30
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %22, %18
  br label %9

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 8
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 8, %41 ]
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %63, %42
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %47, %49
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 16
  br label %55

55:                                               ; preds = %52, %44
  %56 = phi i1 [ false, %44 ], [ %54, %52 ]
  br i1 %56, label %57, label %66

57:                                               ; preds = %55
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 8
  %60 = call i32 @BIT(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %44

66:                                               ; preds = %55
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 255
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %74

70:                                               ; preds = %66
  br label %9

71:                                               ; preds = %17
  %72 = load i32, i32* @ENOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %69
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mtd_ooblayout_free(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #2

declare dso_local i32 @BIT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
