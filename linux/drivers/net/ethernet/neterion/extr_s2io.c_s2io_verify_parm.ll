; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_verify_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_verify_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }

@tx_fifo_num = common dso_local global i32 0, align 4
@MAX_TX_FIFOS = common dso_local global i32 0, align 4
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Requested number of tx fifos (%d) not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Default to %d tx fifos\0A\00", align 1
@multiq = common dso_local global i64 0, align 8
@tx_steering_type = common dso_local global i64 0, align 8
@TX_DEFAULT_STEERING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"Tx steering is not supported with one fifo. Disabling Tx steering.\0A\00", align 1
@NO_STEERING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Requested transmit steering not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Disabling transmit steering\0A\00", align 1
@rx_ring_num = common dso_local global i32 0, align 4
@MAX_RX_RINGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Requested number of rx rings not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Default to %d rx rings\0A\00", align 1
@INTA = common dso_local global i64 0, align 8
@MSI_X = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"Wrong intr_type requested. Defaulting to INTA\0A\00", align 1
@PCI_DEVICE_ID_HERC_WIN = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_HERC_UNI = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"Xframe I does not support MSI_X. Defaulting to INTA\0A\00", align 1
@rx_ring_mode = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Requested ring mode not supported\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Defaulting to 1-buffer mode\0A\00", align 1
@rx_ring_sz = common dso_local global i32* null, align 8
@MAX_RX_BLOCKS_PER_RING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [55 x i8] c"Requested rx ring size not supported\0ADefaulting to %d\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64*, i64*)* @s2io_verify_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_verify_parm(%struct.pci_dev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* @tx_fifo_num, align 4
  %9 = load i32, i32* @MAX_TX_FIFOS, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @tx_fifo_num, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %27

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @ERR_DBG, align 4
  %16 = load i32, i32* @tx_fifo_num, align 4
  %17 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @tx_fifo_num, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* @tx_fifo_num, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @MAX_TX_FIFOS, align 4
  store i32 %22, i32* @tx_fifo_num, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = load i32, i32* @ERR_DBG, align 4
  %25 = load i32, i32* @tx_fifo_num, align 4
  %26 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %11
  %28 = load i64, i64* @multiq, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* @multiq, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* @tx_steering_type, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* @tx_fifo_num, align 4
  %38 = icmp eq i32 1, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i64, i64* @tx_steering_type, align 8
  %41 = load i64, i64* @TX_DEFAULT_STEERING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @ERR_DBG, align 4
  %45 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %44, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i64, i64* @NO_STEERING, align 8
  store i64 %47, i64* @tx_steering_type, align 8
  br label %48

48:                                               ; preds = %46, %36, %33
  %49 = load i64, i64* @tx_steering_type, align 8
  %50 = load i64, i64* @NO_STEERING, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* @tx_steering_type, align 8
  %54 = load i64, i64* @TX_DEFAULT_STEERING, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @ERR_DBG, align 4
  %58 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @ERR_DBG, align 4
  %60 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i64, i64* @NO_STEERING, align 8
  store i64 %61, i64* @tx_steering_type, align 8
  br label %62

62:                                               ; preds = %56, %52
  %63 = load i32, i32* @rx_ring_num, align 4
  %64 = load i32, i32* @MAX_RX_RINGS, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* @ERR_DBG, align 4
  %68 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* @ERR_DBG, align 4
  %70 = load i32, i32* @MAX_RX_RINGS, align 4
  %71 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @MAX_RX_RINGS, align 4
  store i32 %72, i32* @rx_ring_num, align 4
  br label %73

73:                                               ; preds = %66, %62
  %74 = load i64*, i64** %5, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @INTA, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i64*, i64** %5, align 8
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MSI_X, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* @ERR_DBG, align 4
  %85 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i64, i64* @INTA, align 8
  %87 = load i64*, i64** %5, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %78, %73
  %89 = load i64*, i64** %5, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MSI_X, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCI_DEVICE_ID_HERC_WIN, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PCI_DEVICE_ID_HERC_UNI, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load i32, i32* @ERR_DBG, align 4
  %107 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %106, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  %108 = load i64, i64* @INTA, align 8
  %109 = load i64*, i64** %5, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %99, %93, %88
  %111 = load i32, i32* @rx_ring_mode, align 4
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i32, i32* @rx_ring_mode, align 4
  %115 = icmp ne i32 %114, 2
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* @ERR_DBG, align 4
  %118 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %119 = load i32, i32* @ERR_DBG, align 4
  %120 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* @rx_ring_mode, align 4
  br label %121

121:                                              ; preds = %116, %113, %110
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %144, %121
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @MAX_RX_RINGS, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %122
  %127 = load i32*, i32** @rx_ring_sz, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MAX_RX_BLOCKS_PER_RING, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %126
  %135 = load i32, i32* @ERR_DBG, align 4
  %136 = load i32, i32* @MAX_RX_BLOCKS_PER_RING, align 4
  %137 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %135, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @MAX_RX_BLOCKS_PER_RING, align 4
  %139 = load i32*, i32** @rx_ring_sz, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %134, %126
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %122

147:                                              ; preds = %122
  %148 = load i32, i32* @SUCCESS, align 4
  ret i32 %148
}

declare dso_local i32 @DBG_PRINT(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
