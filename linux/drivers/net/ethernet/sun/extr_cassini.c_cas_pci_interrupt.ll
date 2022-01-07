; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_pci_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_pci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32, i32, i64 }

@REG_PCI_ERR_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"PCI error [%04x:%04x]\00", align 1
@REG_BIM_DIAG = common dso_local global i64 0, align 8
@PCI_ERR_BADACK = common dso_local global i32 0, align 4
@CAS_FLAG_REG_PLUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c" <No ACK64# during ABS64 cycle>\00", align 1
@PCI_ERR_DTRTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c" <Delayed transaction timeout>\00", align 1
@PCI_ERR_OTHER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c" <other>\00", align 1
@PCI_ERR_BIM_DMA_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c" <BIM DMA 0 write req>\00", align 1
@PCI_ERR_BIM_DMA_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c" <BIM DMA 0 read req>\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PCI_STATUS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Read PCI cfg space status [%04x]\0A\00", align 1
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"PCI parity error detected\0A\00", align 1
@PCI_STATUS_SIG_TARGET_ABORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"PCI target abort\0A\00", align 1
@PCI_STATUS_REC_TARGET_ABORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"PCI master acks target abort\0A\00", align 1
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"PCI master abort\0A\00", align 1
@PCI_STATUS_SIG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"PCI system error SERR#\0A\00", align 1
@PCI_STATUS_DETECTED_PARITY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"PCI parity error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cas*, i32)* @cas_pci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_pci_interrupt(%struct.net_device* %0, %struct.cas* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.cas* %1, %struct.cas** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cas*, %struct.cas** %6, align 8
  %11 = getelementptr inbounds %struct.cas, %struct.cas* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REG_PCI_ERR_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %153

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.cas*, %struct.cas** %6, align 8
  %23 = getelementptr inbounds %struct.cas, %struct.cas* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_BIM_DIAG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  %28 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PCI_ERR_BADACK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %19
  %34 = load %struct.cas*, %struct.cas** %6, align 8
  %35 = getelementptr inbounds %struct.cas, %struct.cas* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 @pr_cont(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %33, %19
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PCI_ERR_DTRTO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @pr_cont(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PCI_ERR_OTHER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PCI_ERR_BIM_DMA_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @pr_cont(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @PCI_ERR_BIM_DMA_READ, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @pr_cont(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @PCI_ERR_OTHER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %152

76:                                               ; preds = %70
  %77 = load %struct.cas*, %struct.cas** %6, align 8
  %78 = getelementptr inbounds %struct.cas, %struct.cas* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PCI_STATUS, align 4
  %81 = call i32 @pci_read_config_word(i32 %79, i32 %80, i32* %9)
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %76
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @PCI_STATUS_SIG_TARGET_ABORT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.net_device*, %struct.net_device** %5, align 8
  %107 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.net_device*, %struct.net_device** %5, align 8
  %115 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @PCI_STATUS_SIG_SYSTEM_ERROR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.net_device*, %struct.net_device** %5, align 8
  %123 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  %131 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %134 = load i32, i32* @PCI_STATUS_SIG_TARGET_ABORT, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @PCI_STATUS_SIG_SYSTEM_ERROR, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %9, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load %struct.cas*, %struct.cas** %6, align 8
  %147 = getelementptr inbounds %struct.cas, %struct.cas* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @PCI_STATUS, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @pci_write_config_word(i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %132, %70
  store i32 1, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %18
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
