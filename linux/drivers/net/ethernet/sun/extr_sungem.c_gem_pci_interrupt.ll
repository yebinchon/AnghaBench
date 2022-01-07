; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_pci_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_pci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gem = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@GREG_PCIESTAT = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_SUN = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_SUN_GEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"PCI error [%04x]\00", align 1
@GREG_PCIESTAT_BADACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c" <No ACK64# during ABS64 cycle>\00", align 1
@GREG_PCIESTAT_DTRTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c" <Delayed transaction timeout>\00", align 1
@GREG_PCIESTAT_OTHER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c" <other>\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"PCI error\0A\00", align 1
@PCI_STATUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Read PCI cfg space status [%04x]\0A\00", align 1
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"PCI parity error detected\0A\00", align 1
@PCI_STATUS_SIG_TARGET_ABORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"PCI target abort\0A\00", align 1
@PCI_STATUS_REC_TARGET_ABORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"PCI master acks target abort\0A\00", align 1
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"PCI master abort\0A\00", align 1
@PCI_STATUS_SIG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"PCI system error SERR#\0A\00", align 1
@PCI_STATUS_DETECTED_PARITY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"PCI parity error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.gem*, i32)* @gem_pci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_pci_interrupt(%struct.net_device* %0, %struct.gem* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.gem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.gem* %1, %struct.gem** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gem*, %struct.gem** %5, align 8
  %10 = getelementptr inbounds %struct.gem, %struct.gem* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GREG_PCIESTAT, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.gem*, %struct.gem** %5, align 8
  %16 = getelementptr inbounds %struct.gem, %struct.gem* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCI_VENDOR_ID_SUN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %3
  %23 = load %struct.gem*, %struct.gem** %5, align 8
  %24 = getelementptr inbounds %struct.gem, %struct.gem* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCI_DEVICE_ID_SUN_GEM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %22
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GREG_PCIESTAT_BADACK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 @pr_cont(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %30
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @GREG_PCIESTAT_DTRTO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @pr_cont(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @GREG_PCIESTAT_OTHER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  %55 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %62

56:                                               ; preds = %22, %3
  %57 = load i32, i32* @GREG_PCIESTAT_OTHER, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %56, %54
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GREG_PCIESTAT_OTHER, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %143

67:                                               ; preds = %62
  %68 = load %struct.gem*, %struct.gem** %5, align 8
  %69 = getelementptr inbounds %struct.gem, %struct.gem* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* @PCI_STATUS, align 4
  %72 = call i32 @pci_read_config_word(%struct.TYPE_3__* %70, i32 %71, i32* %8)
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %67
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @PCI_STATUS_SIG_TARGET_ABORT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @PCI_STATUS_SIG_SYSTEM_ERROR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %125 = load i32, i32* @PCI_STATUS_SIG_TARGET_ABORT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @PCI_STATUS_SIG_SYSTEM_ERROR, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %8, align 4
  %137 = load %struct.gem*, %struct.gem** %5, align 8
  %138 = getelementptr inbounds %struct.gem, %struct.gem* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i32, i32* @PCI_STATUS, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @pci_write_config_word(%struct.TYPE_3__* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %123, %62
  ret i32 1
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
