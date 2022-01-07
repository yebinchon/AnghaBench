; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_attach_sd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_attach_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32*, i64, i64, i32 }

@mmc_sd_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: error %d whilst initialising SD card\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_attach_sd(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %15 = call i32 @mmc_send_app_op_cond(%struct.mmc_host* %14, i32 0, i32* %5)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %94

20:                                               ; preds = %1
  %21 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %22 = call i32 @mmc_attach_bus(%struct.mmc_host* %21, i32* @mmc_sd_ops)
  %23 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %35 = call i64 @mmc_host_is_spi(%struct.mmc_host* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = call i32 @mmc_go_idle(%struct.mmc_host* %38)
  %40 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %41 = call i32 @mmc_spi_read_ocr(%struct.mmc_host* %40, i32 0, i32* %5)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %86

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, -32768
  store i32 %48, i32* %5, align 4
  %49 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @mmc_select_voltage(%struct.mmc_host* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %86

57:                                               ; preds = %46
  %58 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @mmc_sd_init_card(%struct.mmc_host* %58, i32 %59, i32* null)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %86

64:                                               ; preds = %57
  %65 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %66 = call i32 @mmc_release_host(%struct.mmc_host* %65)
  %67 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @mmc_add_card(i32* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %77

74:                                               ; preds = %64
  %75 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %76 = call i32 @mmc_claim_host(%struct.mmc_host* %75)
  store i32 0, i32* %2, align 4
  br label %94

77:                                               ; preds = %73
  %78 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %79 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @mmc_remove_card(i32* %80)
  %82 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %83 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  %84 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %85 = call i32 @mmc_claim_host(%struct.mmc_host* %84)
  br label %86

86:                                               ; preds = %77, %63, %54, %44
  %87 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %88 = call i32 @mmc_detach_bus(%struct.mmc_host* %87)
  %89 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %90 = call i32 @mmc_hostname(%struct.mmc_host* %89)
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %86, %74, %18
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_send_app_op_cond(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @mmc_attach_bus(%struct.mmc_host*, i32*) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_go_idle(%struct.mmc_host*) #1

declare dso_local i32 @mmc_spi_read_ocr(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @mmc_select_voltage(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_sd_init_card(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_add_card(i32*) #1

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_remove_card(i32*) #1

declare dso_local i32 @mmc_detach_bus(%struct.mmc_host*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
