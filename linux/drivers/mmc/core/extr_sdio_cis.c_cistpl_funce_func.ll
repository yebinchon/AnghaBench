; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_cis.c_cistpl_funce_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_cis.c_cistpl_funce_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.sdio_func = type { i8, i8, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SDIO_SDIO_REV_1_00 = common dso_local global i32 0, align 4
@SDIO_SDIO_REV_1_10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: card has broken SDIO 1.1 CIS, forcing SDIO 1.0\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.sdio_func*, i8*, i32)* @cistpl_funce_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cistpl_funce_func(%struct.mmc_card* %0, %struct.sdio_func* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca %struct.sdio_func*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %6, align 8
  store %struct.sdio_func* %1, %struct.sdio_func** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %13 = icmp ne %struct.sdio_func* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %88

17:                                               ; preds = %4
  %18 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @SDIO_SDIO_REV_1_00, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 28, i32 42
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 28
  br i1 %30, label %31, label %42

31:                                               ; preds = %17
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SDIO_SDIO_REV_1_10, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %37 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mmc_hostname(i32 %38)
  %40 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @SDIO_SDIO_REV_1_00, align 4
  store i32 %41, i32* %10, align 4
  br label %50

42:                                               ; preds = %31, %17
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %88

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 12
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 13
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 8
  %60 = or i32 %54, %59
  %61 = trunc i32 %60 to i8
  %62 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %63 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %62, i32 0, i32 0
  store i8 %61, i8* %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @SDIO_SDIO_REV_1_00, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %50
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 28
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 29
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 8
  %77 = or i32 %71, %76
  %78 = mul nsw i32 %77, 10
  %79 = trunc i32 %78 to i8
  %80 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %81 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %80, i32 0, i32 1
  store i8 %79, i8* %81, align 1
  br label %87

82:                                               ; preds = %50
  %83 = load i32, i32* @HZ, align 4
  %84 = call zeroext i8 @jiffies_to_msecs(i32 %83)
  %85 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %86 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %85, i32 0, i32 1
  store i8 %84, i8* %86, align 1
  br label %87

87:                                               ; preds = %82, %67
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %46, %14
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local zeroext i8 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
