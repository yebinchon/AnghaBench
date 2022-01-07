; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_setup_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_setup_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_card = type { i32 }

@use_spi_crc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"%s: host does not support reading read-only switch, assuming write-enable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_sd_setup_card(%struct.mmc_host* %0, %struct.mmc_card* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %5, align 8
  store %struct.mmc_card* %1, %struct.mmc_card** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %3
  %13 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %14 = call i32 @mmc_app_send_scr(%struct.mmc_card* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %77

19:                                               ; preds = %12
  %20 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %21 = call i32 @mmc_decode_scr(%struct.mmc_card* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %77

26:                                               ; preds = %19
  %27 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %28 = call i32 @mmc_read_ssr(%struct.mmc_card* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %77

33:                                               ; preds = %26
  %34 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %35 = call i32 @mmc_init_erase(%struct.mmc_card* %34)
  %36 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %37 = call i32 @mmc_read_switch(%struct.mmc_card* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %77

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %45 = call i64 @mmc_host_is_spi(%struct.mmc_host* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %49 = load i32, i32* @use_spi_crc, align 4
  %50 = call i32 @mmc_spi_set_crc(%struct.mmc_host* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %77

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  %60 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %61 = call i32 @mmc_sd_get_ro(%struct.mmc_host* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %66 = call i32 @mmc_hostname(%struct.mmc_host* %65)
  %67 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %75

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %73 = call i32 @mmc_card_set_readonly(%struct.mmc_card* %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %64
  br label %76

76:                                               ; preds = %75, %56
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %53, %40, %31, %24, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @mmc_app_send_scr(%struct.mmc_card*) #1

declare dso_local i32 @mmc_decode_scr(%struct.mmc_card*) #1

declare dso_local i32 @mmc_read_ssr(%struct.mmc_card*) #1

declare dso_local i32 @mmc_init_erase(%struct.mmc_card*) #1

declare dso_local i32 @mmc_read_switch(%struct.mmc_card*) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_spi_set_crc(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_sd_get_ro(%struct.mmc_host*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @mmc_card_set_readonly(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
