; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_peak_pciefd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_peak_pciefd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.pciefd_board = type { i32, i32, i32, %struct.pci_dev* }

@PCIEFD_DRV_NAME = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"probing device %04x:%04x:%04x\0A\00", align 1
@can = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCIEFD_BAR0_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to map PCI resource #0\0A\00", align 1
@PCIEFD_REG_SYS_VER2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%ux CAN-FD PCAN-PCIe FPGA v%u.%u.%u:\0A\00", align 1
@PCIEFD_SYS_CTL_CLK_EN = common dso_local global i32 0, align 4
@PCIEFD_REG_SYS_CTL_CLR = common dso_local global i32 0, align 4
@PCIEFD_SYS_CTL_TS_RST = common dso_local global i32 0, align 4
@PCIEFD_REG_SYS_CTL_SET = common dso_local global i32 0, align 4
@PCIEFD_REG_SYS_VER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @peak_pciefd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peak_pciefd_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.pciefd_board*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_enable_device(%struct.pci_dev* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %173

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load i32, i32* @PCIEFD_DRV_NAME, align 4
  %23 = call i32 @pci_request_regions(%struct.pci_dev* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %168

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %28, i32 %29, i32* %9)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %165

34:                                               ; preds = %27
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp sge i32 %45, 18
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 4, i32* %8, align 4
  br label %59

48:                                               ; preds = %34
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 16
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 3, i32* %8, align 4
  br label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 2, i32* %8, align 4
  br label %57

56:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %63 = load i32, i32* @can, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @struct_size(%struct.pciefd_board* %62, i32 %63, i32 %64)
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.pciefd_board* @devm_kzalloc(i32* %61, i32 %65, i32 %66)
  store %struct.pciefd_board* %67, %struct.pciefd_board** %6, align 8
  %68 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %69 = icmp ne %struct.pciefd_board* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %165

73:                                               ; preds = %59
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %76 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %75, i32 0, i32 3
  store %struct.pci_dev* %74, %struct.pci_dev** %76, align 8
  %77 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %78 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %77, i32 0, i32 2
  %79 = call i32 @spin_lock_init(i32* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = load i32, i32* @PCIEFD_BAR0_SIZE, align 4
  %82 = call i32 @pci_iomap(%struct.pci_dev* %80, i32 0, i32 %81)
  %83 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %84 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %86 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %73
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %165

95:                                               ; preds = %73
  %96 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %97 = load i32, i32* @PCIEFD_REG_SYS_VER2, align 4
  %98 = call i32 @pciefd_sys_readreg(%struct.pciefd_board* %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, 61440
  %101 = ashr i32 %100, 12
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %13, align 4
  %103 = and i32 %102, 3840
  %104 = ashr i32 %103, 8
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %13, align 4
  %106 = and i32 %105, 240
  %107 = ashr i32 %106, 4
  store i32 %107, i32* %12, align 4
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @dev_info(i32* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %116 = load i32, i32* @PCIEFD_SYS_CTL_CLK_EN, align 4
  %117 = load i32, i32* @PCIEFD_REG_SYS_CTL_CLR, align 4
  %118 = call i32 @pciefd_sys_writereg(%struct.pciefd_board* %115, i32 %116, i32 %117)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = call i32 @pci_set_master(%struct.pci_dev* %119)
  br label %121

121:                                              ; preds = %133, %95
  %122 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %123 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %129 = call i32 @pciefd_can_probe(%struct.pciefd_board* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %157

133:                                              ; preds = %127
  %134 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %135 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  br label %121

138:                                              ; preds = %121
  %139 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %140 = load i32, i32* @PCIEFD_SYS_CTL_TS_RST, align 4
  %141 = load i32, i32* @PCIEFD_REG_SYS_CTL_SET, align 4
  %142 = call i32 @pciefd_sys_writereg(%struct.pciefd_board* %139, i32 %140, i32 %141)
  %143 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %144 = load i32, i32* @PCIEFD_REG_SYS_VER1, align 4
  %145 = call i32 @pciefd_sys_readreg(%struct.pciefd_board* %143, i32 %144)
  %146 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %147 = load i32, i32* @PCIEFD_SYS_CTL_TS_RST, align 4
  %148 = load i32, i32* @PCIEFD_REG_SYS_CTL_CLR, align 4
  %149 = call i32 @pciefd_sys_writereg(%struct.pciefd_board* %146, i32 %147, i32 %148)
  %150 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %151 = load i32, i32* @PCIEFD_SYS_CTL_CLK_EN, align 4
  %152 = load i32, i32* @PCIEFD_REG_SYS_CTL_SET, align 4
  %153 = call i32 @pciefd_sys_writereg(%struct.pciefd_board* %150, i32 %151, i32 %152)
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %156 = call i32 @pci_set_drvdata(%struct.pci_dev* %154, %struct.pciefd_board* %155)
  store i32 0, i32* %3, align 4
  br label %173

157:                                              ; preds = %132
  %158 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %159 = call i32 @pciefd_can_remove_all(%struct.pciefd_board* %158)
  %160 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %161 = load %struct.pciefd_board*, %struct.pciefd_board** %6, align 8
  %162 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @pci_iounmap(%struct.pci_dev* %160, i32 %163)
  br label %165

165:                                              ; preds = %157, %89, %70, %33
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = call i32 @pci_release_regions(%struct.pci_dev* %166)
  br label %168

168:                                              ; preds = %165, %26
  %169 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %170 = call i32 @pci_disable_device(%struct.pci_dev* %169)
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @pcibios_err_to_errno(i32 %171)
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %168, %138, %18
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local %struct.pciefd_board* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.pciefd_board*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pciefd_sys_readreg(%struct.pciefd_board*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pciefd_sys_writereg(%struct.pciefd_board*, i32, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pciefd_can_probe(%struct.pciefd_board*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pciefd_board*) #1

declare dso_local i32 @pciefd_can_remove_all(%struct.pciefd_board*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pcibios_err_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
