; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600-regmap.c_regmap_encx24j600_sfr_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600-regmap.c_regmap_encx24j600_sfr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_context = type { i32, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32 }

@ADDR_MASK = common dso_local global i32 0, align 4
@BANK_MASK = common dso_local global i32 0, align 4
@BANK_SHIFT = common dso_local global i32 0, align 4
@WGPRDPT = common dso_local global i32 0, align 4
@WGPWRPT = common dso_local global i32 0, align 4
@WRXRDPT = common dso_local global i32 0, align 4
@WRXWRPT = common dso_local global i32 0, align 4
@WUDARDPT = common dso_local global i32 0, align 4
@WUDAWRPT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encx24j600_context*, i32, i32*, i64, i32, i32)* @regmap_encx24j600_sfr_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_encx24j600_sfr_update(%struct.encx24j600_context* %0, i32 %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.encx24j600_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.spi_message, align 4
  %18 = alloca [3 x %struct.spi_transfer], align 16
  %19 = alloca i32, align 4
  store %struct.encx24j600_context* %0, %struct.encx24j600_context** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ADDR_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @BANK_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @BANK_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %16, align 4
  %29 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %18, i64 0, i64 0
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 0
  store i32* %16, i32** %30, align 16
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 1
  store i32 4, i32* %31, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i64 1
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 0
  store i32* %9, i32** %33, align 16
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 1
  store i32 4, i32* %34, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i64 1
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 0
  %37 = load i32*, i32** %10, align 8
  store i32* %37, i32** %36, align 16
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 1
  %39 = load i64, i64* %11, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 128
  br i1 %42, label %43, label %66

43:                                               ; preds = %6
  store i32 0, i32* %19, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 22
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.encx24j600_context*, %struct.encx24j600_context** %8, align 8
  %51 = getelementptr inbounds %struct.encx24j600_context, %struct.encx24j600_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.encx24j600_context*, %struct.encx24j600_context** %8, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @encx24j600_switch_bank(%struct.encx24j600_context* %56, i32 %57)
  store i32 %58, i32* %19, align 4
  br label %59

59:                                               ; preds = %55, %49, %43
  %60 = load i32, i32* %19, align 4
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %19, align 4
  store i32 %64, i32* %7, align 4
  br label %104

65:                                               ; preds = %59
  br label %85

66:                                               ; preds = %6
  %67 = load i32, i32* %9, align 4
  switch i32 %67, label %81 [
    i32 135, label %68
    i32 134, label %70
    i32 132, label %72
    i32 131, label %74
    i32 129, label %76
    i32 128, label %78
    i32 136, label %80
    i32 133, label %80
    i32 130, label %80
  ]

68:                                               ; preds = %66
  %69 = load i32, i32* @WGPRDPT, align 4
  store i32 %69, i32* %16, align 4
  br label %84

70:                                               ; preds = %66
  %71 = load i32, i32* @WGPWRPT, align 4
  store i32 %71, i32* %16, align 4
  br label %84

72:                                               ; preds = %66
  %73 = load i32, i32* @WRXRDPT, align 4
  store i32 %73, i32* %16, align 4
  br label %84

74:                                               ; preds = %66
  %75 = load i32, i32* @WRXWRPT, align 4
  store i32 %75, i32* %16, align 4
  br label %84

76:                                               ; preds = %66
  %77 = load i32, i32* @WUDARDPT, align 4
  store i32 %77, i32* %16, align 4
  br label %84

78:                                               ; preds = %66
  %79 = load i32, i32* @WUDAWRPT, align 4
  store i32 %79, i32* %16, align 4
  br label %84

80:                                               ; preds = %66, %66, %66
  br label %81

81:                                               ; preds = %66, %80
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %104

84:                                               ; preds = %78, %76, %74, %72, %70, %68
  br label %85

85:                                               ; preds = %84, %65
  %86 = call i32 @spi_message_init(%struct.spi_message* %17)
  %87 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %18, i64 0, i64 0
  %88 = call i32 @spi_message_add_tail(%struct.spi_transfer* %87, %struct.spi_message* %17)
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %18, i64 0, i64 1
  %94 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %93, i32 0, i32 0
  store i32* %9, i32** %94, align 16
  %95 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %18, i64 0, i64 1
  %96 = call i32 @spi_message_add_tail(%struct.spi_transfer* %95, %struct.spi_message* %17)
  br label %97

97:                                               ; preds = %92, %85
  %98 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %18, i64 0, i64 2
  %99 = call i32 @spi_message_add_tail(%struct.spi_transfer* %98, %struct.spi_message* %17)
  %100 = load %struct.encx24j600_context*, %struct.encx24j600_context** %8, align 8
  %101 = getelementptr inbounds %struct.encx24j600_context, %struct.encx24j600_context* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @spi_sync(i32 %102, %struct.spi_message* %17)
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %97, %81, %63
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @encx24j600_switch_bank(%struct.encx24j600_context*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
