; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_pdc_set_single_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_pdc_set_single_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XFER_RECEIVE = common dso_local global i32 0, align 4
@ATMEL_PDC_RPR = common dso_local global i32 0, align 4
@ATMEL_PDC_RCR = common dso_local global i32 0, align 4
@ATMEL_PDC_TPR = common dso_local global i32 0, align 4
@ATMEL_PDC_TCR = common dso_local global i32 0, align 4
@PDC_SECOND_BUF = common dso_local global i32 0, align 4
@ATMEL_PDC_SCND_BUF_OFF = common dso_local global i64 0, align 8
@ATMCI_MR = common dso_local global i32 0, align 4
@ATMCI_MR_PDCFBYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_mci*, i32, i32)* @atmci_pdc_set_single_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_pdc_set_single_buf(%struct.atmel_mci* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.atmel_mci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atmel_mci* %0, %struct.atmel_mci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @XFER_RECEIVE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ATMEL_PDC_RPR, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @ATMEL_PDC_RCR, align 4
  store i32 %15, i32* %8, align 4
  br label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ATMEL_PDC_TPR, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @ATMEL_PDC_TCR, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PDC_SECOND_BUF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i64, i64* @ATMEL_PDC_SCND_BUF_OFF, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* @ATMEL_PDC_SCND_BUF_OFF, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %23, %19
  %35 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %42 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %47 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @atmci_writel(%struct.atmel_mci* %44, i32 %45, i32 %48)
  br label %62

50:                                               ; preds = %34
  %51 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %52 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sg_dma_len(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %58 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sg_dma_address(i32 %59)
  %61 = call i32 @atmci_writel(%struct.atmel_mci* %55, i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %50, %40
  %63 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %64 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ule i32 %65, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %62
  %69 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %70 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 3
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %78 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @atmci_writel(%struct.atmel_mci* %75, i32 %76, i32 %79)
  %81 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %82 = load i32, i32* @ATMCI_MR, align 4
  %83 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %84 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ATMCI_MR_PDCFBYTE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @atmci_writel(%struct.atmel_mci* %81, i32 %82, i32 %87)
  br label %97

89:                                               ; preds = %68
  %90 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %93 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = udiv i32 %94, 4
  %96 = call i32 @atmci_writel(%struct.atmel_mci* %90, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %89, %74
  %98 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %99 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %98, i32 0, i32 2
  store i32 0, i32* %99, align 4
  br label %129

100:                                              ; preds = %62
  %101 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %104 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @sg_dma_len(i32 %105)
  %107 = sdiv i32 %106, 4
  %108 = call i32 @atmci_writel(%struct.atmel_mci* %101, i32 %102, i32 %107)
  %109 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %110 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @sg_dma_len(i32 %111)
  %113 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %114 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = sub i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %118 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %100
  %122 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %123 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @sg_next(i32 %124)
  %126 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %127 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %100
  br label %129

129:                                              ; preds = %128, %97
  ret void
}

declare dso_local i32 @atmci_writel(%struct.atmel_mci*, i32, i32) #1

declare dso_local i32 @sg_dma_len(i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @sg_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
