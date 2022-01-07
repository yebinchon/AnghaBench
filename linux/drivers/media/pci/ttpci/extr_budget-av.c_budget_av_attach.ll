; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_budget_av_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_budget_av_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.saa7146_dev = type { %struct.budget_av* }
%struct.budget_av = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { %struct.budget_av*, i32, i32* }
%struct.saa7146_pci_extension_data = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"dev: %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@DD1_STREAM_B = common dso_local global i32 0, align 4
@DD1_INIT = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_09 = common dso_local global i32 0, align 4
@MASK_25 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MASK_26 = common dso_local global i32 0, align 4
@vv_data = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot init vv subsystem\0A\00", align 1
@vidioc_enum_input = common dso_local global i32 0, align 4
@vidioc_g_input = common dso_local global i32 0, align 4
@vidioc_s_input = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"knc1\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"cannot register capture v4l2 device\0A\00", align 1
@SAA7146_HPS_SOURCE_PORT_A = common dso_local global i32 0, align 4
@SAA7146_HPS_SYNC_PORT_A = common dso_local global i32 0, align 4
@PCI_BT_V1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"KNC1-%d: Could not read MAC from KNC1 card\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"KNC1-%d: MAC addr = %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)* @budget_av_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @budget_av_attach(%struct.saa7146_dev* %0, %struct.saa7146_pci_extension_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_pci_extension_data*, align 8
  %6 = alloca %struct.budget_av*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_pci_extension_data* %1, %struct.saa7146_pci_extension_data** %5, align 8
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %10 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.budget_av* @kzalloc(i32 56, i32 %11)
  store %struct.budget_av* %12, %struct.budget_av** %6, align 8
  %13 = icmp ne %struct.budget_av* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %136

17:                                               ; preds = %2
  %18 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %19 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %21 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %25 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %24, i32 0, i32 0
  store %struct.budget_av* %23, %struct.budget_av** %25, align 8
  %26 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %27 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %26, i32 0, i32 1
  %28 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %29 = load %struct.saa7146_pci_extension_data*, %struct.saa7146_pci_extension_data** %5, align 8
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = load i32, i32* @adapter_nr, align 4
  %32 = call i32 @ttpci_budget_init(%struct.TYPE_10__* %27, %struct.saa7146_dev* %28, %struct.saa7146_pci_extension_data* %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %37 = call i32 @kfree(%struct.budget_av* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %136

39:                                               ; preds = %17
  %40 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %41 = load i32, i32* @DD1_STREAM_B, align 4
  %42 = call i32 @saa7146_write(%struct.saa7146_dev* %40, i32 %41, i32 67108864)
  %43 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %44 = load i32, i32* @DD1_INIT, align 4
  %45 = call i32 @saa7146_write(%struct.saa7146_dev* %43, i32 %44, i32 117442048)
  %46 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %47 = load i32, i32* @MC2, align 4
  %48 = load i32, i32* @MASK_09, align 4
  %49 = load i32, i32* @MASK_25, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MASK_10, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MASK_26, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @saa7146_write(%struct.saa7146_dev* %46, i32 %47, i32 %54)
  %56 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %57 = call i64 @saa7113_init(%struct.budget_av* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %39
  %60 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %61 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %63 = call i32 @saa7146_vv_init(%struct.saa7146_dev* %62, %struct.TYPE_9__* @vv_data)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %136

69:                                               ; preds = %59
  %70 = load i32, i32* @vidioc_enum_input, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vv_data, i32 0, i32 0, i32 2), align 4
  %71 = load i32, i32* @vidioc_g_input, align 4
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vv_data, i32 0, i32 0, i32 1), align 4
  %72 = load i32, i32* @vidioc_s_input, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vv_data, i32 0, i32 0, i32 0), align 4
  %73 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %74 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %73, i32 0, i32 2
  %75 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %76 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %77 = call i32 @saa7146_register_device(i32* %74, %struct.saa7146_dev* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %82 = call i32 @saa7146_vv_release(%struct.saa7146_dev* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %136

84:                                               ; preds = %69
  %85 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %86 = load i32, i32* @SAA7146_HPS_SOURCE_PORT_A, align 4
  %87 = load i32, i32* @SAA7146_HPS_SYNC_PORT_A, align 4
  %88 = call i32 @saa7146_set_hps_source_and_sync(%struct.saa7146_dev* %85, i32 %86, i32 %87)
  %89 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %90 = call i32 @saa7113_setinput(%struct.budget_av* %89, i32 0)
  br label %91

91:                                               ; preds = %84, %39
  %92 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %93 = load i32, i32* @PCI_BT_V1, align 4
  %94 = call i32 @saa7146_write(%struct.saa7146_dev* %92, i32 %93, i32 469766175)
  %95 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %96 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %7, align 8
  %100 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %101 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32*, i32** %7, align 8
  %104 = call i64 @i2c_readregs(i32* %102, i32 160, i32 48, i32* %103, i32 6)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %91
  %107 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %108 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @eth_zero_addr(i32* %113)
  br label %123

115:                                              ; preds = %91
  %116 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %117 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %120, i32* %121)
  br label %123

123:                                              ; preds = %115, %106
  %124 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %125 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %126 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store %struct.budget_av* %124, %struct.budget_av** %128, align 8
  %129 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %130 = call i32 @frontend_init(%struct.budget_av* %129)
  %131 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %132 = call i32 @ciintf_init(%struct.budget_av* %131)
  %133 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %134 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %133, i32 0, i32 1
  %135 = call i32 @ttpci_budget_init_hooks(%struct.TYPE_10__* %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %123, %79, %66, %35, %14
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @dprintk(i32, i8*, %struct.saa7146_dev*) #1

declare dso_local %struct.budget_av* @kzalloc(i32, i32) #1

declare dso_local i32 @ttpci_budget_init(%struct.TYPE_10__*, %struct.saa7146_dev*, %struct.saa7146_pci_extension_data*, i32, i32) #1

declare dso_local i32 @kfree(%struct.budget_av*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i64 @saa7113_init(%struct.budget_av*) #1

declare dso_local i32 @saa7146_vv_init(%struct.saa7146_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @saa7146_register_device(i32*, %struct.saa7146_dev*, i8*, i32) #1

declare dso_local i32 @saa7146_vv_release(%struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_set_hps_source_and_sync(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7113_setinput(%struct.budget_av*, i32) #1

declare dso_local i64 @i2c_readregs(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @eth_zero_addr(i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32*) #1

declare dso_local i32 @frontend_init(%struct.budget_av*) #1

declare dso_local i32 @ciintf_init(%struct.budget_av*) #1

declare dso_local i32 @ttpci_budget_init_hooks(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
