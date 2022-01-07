; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_init_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_init_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32*, i32, i32, %struct.TYPE_4__, i32*, i32, i32, %struct.net_device*, i32, i32, i32, %struct.pci_dev*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.ef4_nic* }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@ef4_reset_work = common dso_local global i32 0, align 4
@ef4_monitor = common dso_local global i32 0, align 4
@ef4_selftest_async_work = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@STATE_UNINIT = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@ef4_dummy_phy_operations = common dso_local global i32 0, align 4
@ef4_mac_work = common dso_local global i32 0, align 4
@EF4_MAX_CHANNELS = common dso_local global i32 0, align 4
@interrupt_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sfc%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*, %struct.pci_dev*, %struct.net_device*)* @ef4_init_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_init_struct(%struct.ef4_nic* %0, %struct.pci_dev* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ef4_nic*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 27
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %13 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %12, i32 0, i32 26
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %16 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %15, i32 0, i32 25
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %19 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %18, i32 0, i32 23
  %20 = load i32, i32* @ef4_reset_work, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %23 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %22, i32 0, i32 22
  %24 = load i32, i32* @ef4_monitor, align 4
  %25 = call i32 @INIT_DELAYED_WORK(i32* %23, i32 %24)
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %27 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %26, i32 0, i32 21
  %28 = load i32, i32* @ef4_selftest_async_work, align 4
  %29 = call i32 @INIT_DELAYED_WORK(i32* %27, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %32 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %31, i32 0, i32 20
  store %struct.pci_dev* %30, %struct.pci_dev** %32, align 8
  %33 = load i32, i32* @debug, align 4
  %34 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %35 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %34, i32 0, i32 19
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @STATE_UNINIT, align 4
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %38 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %37, i32 0, i32 18
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %40 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %43 = call i8* @pci_name(%struct.pci_dev* %42)
  %44 = call i32 @strlcpy(i32 %41, i8* %43, i32 4)
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %47 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %46, i32 0, i32 16
  store %struct.net_device* %45, %struct.net_device** %47, align 8
  %48 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %49 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %48, i32 0, i32 6
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %54 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @NET_IP_ALIGN, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %3
  %58 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %59 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NET_IP_ALIGN, align 4
  %62 = add nsw i32 %60, %61
  %63 = srem i32 %62, 4
  br label %65

64:                                               ; preds = %3
  br label %65

65:                                               ; preds = %64, %57
  %66 = phi i32 [ %63, %57 ], [ 0, %64 ]
  %67 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %68 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %70 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %69, i32 0, i32 6
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %75 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %74, i32 0, i32 6
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %73, %78
  %80 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %81 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %83 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %82, i32 0, i32 6
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %88 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %87, i32 0, i32 6
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %86, %91
  %93 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %94 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %96 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %95, i32 0, i32 15
  %97 = call i32 @spin_lock_init(i32* %96)
  %98 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %99 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %98, i32 0, i32 14
  %100 = call i32 @mutex_init(i32* %99)
  %101 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %102 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %101, i32 0, i32 13
  store i32* @ef4_dummy_phy_operations, i32** %102, align 8
  %103 = load %struct.net_device*, %struct.net_device** %7, align 8
  %104 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %105 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %104, i32 0, i32 12
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store %struct.net_device* %103, %struct.net_device** %106, align 8
  %107 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %108 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %107, i32 0, i32 11
  %109 = load i32, i32* @ef4_mac_work, align 4
  %110 = call i32 @INIT_WORK(i32* %108, i32 %109)
  %111 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %112 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %111, i32 0, i32 10
  %113 = call i32 @init_waitqueue_head(i32* %112)
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %154, %65
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @EF4_MAX_CHANNELS, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %157

118:                                              ; preds = %114
  %119 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @ef4_alloc_channel(%struct.ef4_nic* %119, i32 %120, i32* null)
  %122 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %123 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %122, i32 0, i32 9
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %129 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %128, i32 0, i32 9
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %118
  br label %185

137:                                              ; preds = %118
  %138 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %139 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %140 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %139, i32 0, i32 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store %struct.ef4_nic* %138, %struct.ef4_nic** %145, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %148 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %147, i32 0, i32 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32 %146, i32* %153, align 8
  br label %154

154:                                              ; preds = %137
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %114

157:                                              ; preds = %114
  %158 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %159 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %158, i32 0, i32 6
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @interrupt_mode, align 4
  %164 = call i32 @max(i32 %162, i32 %163)
  %165 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %166 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 8
  %167 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %168 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %171 = call i8* @pci_name(%struct.pci_dev* %170)
  %172 = call i32 @snprintf(i32 %169, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %171)
  %173 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %174 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @create_singlethread_workqueue(i32 %175)
  %177 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %178 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %180 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %157
  br label %185

184:                                              ; preds = %157
  store i32 0, i32* %4, align 4
  br label %190

185:                                              ; preds = %183, %136
  %186 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %187 = call i32 @ef4_fini_struct(%struct.ef4_nic* %186)
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %185, %184
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ef4_alloc_channel(%struct.ef4_nic*, i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @ef4_fini_struct(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
