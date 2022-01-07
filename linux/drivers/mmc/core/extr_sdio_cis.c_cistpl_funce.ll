; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_cis.c_cistpl_funce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_cis.c_cistpl_funce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.sdio_func = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CISTPL_FUNCE\00", align 1
@cis_tpl_funce_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.sdio_func*, i8*, i32)* @cistpl_funce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cistpl_funce(%struct.mmc_card* %0, %struct.sdio_func* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca %struct.sdio_func*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %6, align 8
  store %struct.sdio_func* %1, %struct.sdio_func** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %27

15:                                               ; preds = %4
  %16 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %17 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %18 = load i32, i32* @cis_tpl_funce_list, align 4
  %19 = load i32, i32* @cis_tpl_funce_list, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @cis_tpl_parse(%struct.mmc_card* %16, %struct.sdio_func* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i8 zeroext %23, i8* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %15, %12
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @cis_tpl_parse(%struct.mmc_card*, %struct.sdio_func*, i8*, i32, i32, i8 zeroext, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
