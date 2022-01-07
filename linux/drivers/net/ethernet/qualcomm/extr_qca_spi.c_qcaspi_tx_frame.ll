; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_tx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i64, i64 }
%struct.sk_buff = type { i64, i64 }

@SPI_REG_BFR_SIZE = common dso_local global i32 0, align 4
@wr_verify = common dso_local global i32 0, align 4
@QCA7K_SPI_WRITE = common dso_local global i32 0, align 4
@QCA7K_SPI_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcaspi*, %struct.sk_buff*)* @qcaspi_tx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_tx_frame(%struct.qcaspi* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcaspi*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.qcaspi* %0, %struct.qcaspi** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %14 = load i32, i32* @SPI_REG_BFR_SIZE, align 4
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* @wr_verify, align 4
  %17 = call i32 @qcaspi_write_register(%struct.qcaspi* %13, i32 %14, i64 %15, i32 %16)
  %18 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %19 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %24 = load i32, i32* @QCA7K_SPI_WRITE, align 4
  %25 = load i32, i32* @QCA7K_SPI_EXTERNAL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @qcaspi_tx_cmd(%struct.qcaspi* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %2
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %36 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %41 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %45 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @qcaspi_write_legacy(%struct.qcaspi* %49, i64 %54, i64 %55)
  store i64 %56, i64* %7, align 8
  br label %66

57:                                               ; preds = %43
  %58 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @qcaspi_write_burst(%struct.qcaspi* %58, i64 %63, i64 %64)
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %57, %48
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %79

71:                                               ; preds = %66
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %9, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %9, align 8
  br label %29

78:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @qcaspi_write_register(%struct.qcaspi*, i32, i64, i32) #1

declare dso_local i32 @qcaspi_tx_cmd(%struct.qcaspi*, i32) #1

declare dso_local i64 @qcaspi_write_legacy(%struct.qcaspi*, i64, i64) #1

declare dso_local i64 @qcaspi_write_burst(%struct.qcaspi*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
