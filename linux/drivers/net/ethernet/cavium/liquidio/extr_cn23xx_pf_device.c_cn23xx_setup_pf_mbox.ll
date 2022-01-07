; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_setup_pf_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_setup_pf_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.octeon_mbox**, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32 }
%struct.octeon_mbox = type { i64, %struct.TYPE_6__, i32*, i32*, i32*, i32, %struct.octeon_device*, i32 }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

@OCTEON_MBOX_STATE_IDLE = common dso_local global i32 0, align 4
@cn23xx_pf_mbox_thread = common dso_local global i32 0, align 4
@OCTEON_PFVFSIG = common dso_local global i32 0, align 4
@OCTEON_CN23XX_REV_1_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @cn23xx_setup_pf_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn23xx_setup_pf_mbox(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.octeon_mbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.octeon_mbox* null, %struct.octeon_mbox** %4, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %151

21:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %116, %21
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %29, label %119

29:                                               ; preds = %22
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %30, %34
  store i64 %35, i64* %7, align 8
  %36 = call %struct.octeon_mbox* @vmalloc(i32 72)
  store %struct.octeon_mbox* %36, %struct.octeon_mbox** %4, align 8
  %37 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %38 = icmp ne %struct.octeon_mbox* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %136

40:                                               ; preds = %29
  %41 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %42 = call i32 @memset(%struct.octeon_mbox* %41, i32 0, i32 72)
  %43 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %44 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %43, i32 0, i32 7
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %47 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %48 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %47, i32 0, i32 6
  store %struct.octeon_device* %46, %struct.octeon_device** %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %51 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @OCTEON_MBOX_STATE_IDLE, align 4
  %53 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %54 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @CN23XX_SLI_MAC_PF_MBOX_INT(i32 %62, i32 %63)
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %68 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @CN23XX_SLI_PKT_PF_VF_MBOX_SIG(i64 %76, i32 0)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %81 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %83 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @CN23XX_SLI_PKT_PF_VF_MBOX_SIG(i64 %89, i32 1)
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %94 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  %95 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %96 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* @cn23xx_pf_mbox_thread, align 4
  %99 = call i32 @INIT_DELAYED_WORK(i32* %97, i32 %98)
  %100 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %101 = bitcast %struct.octeon_mbox* %100 to i8*
  %102 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %103 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %106 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %106, i32 0, i32 1
  %108 = load %struct.octeon_mbox**, %struct.octeon_mbox*** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds %struct.octeon_mbox*, %struct.octeon_mbox** %108, i64 %109
  store %struct.octeon_mbox* %105, %struct.octeon_mbox** %110, align 8
  %111 = load i32, i32* @OCTEON_PFVFSIG, align 4
  %112 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %113 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @writeq(i32 %111, i32* %114)
  br label %116

116:                                              ; preds = %40
  %117 = load i64, i64* %8, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %8, align 8
  br label %22

119:                                              ; preds = %22
  %120 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %121 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @OCTEON_CN23XX_REV_1_1, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %127 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %126, i32 0, i32 1
  %128 = load %struct.octeon_mbox**, %struct.octeon_mbox*** %127, align 8
  %129 = getelementptr inbounds %struct.octeon_mbox*, %struct.octeon_mbox** %128, i64 0
  %130 = load %struct.octeon_mbox*, %struct.octeon_mbox** %129, align 8
  %131 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = call i32 @msecs_to_jiffies(i32 0)
  %134 = call i32 @schedule_delayed_work(i32* %132, i32 %133)
  br label %135

135:                                              ; preds = %125, %119
  store i32 0, i32* %2, align 4
  br label %151

136:                                              ; preds = %39
  br label %137

137:                                              ; preds = %140, %136
  %138 = load i64, i64* %8, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load i64, i64* %8, align 8
  %142 = add i64 %141, -1
  store i64 %142, i64* %8, align 8
  %143 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %143, i32 0, i32 1
  %145 = load %struct.octeon_mbox**, %struct.octeon_mbox*** %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds %struct.octeon_mbox*, %struct.octeon_mbox** %145, i64 %146
  %148 = load %struct.octeon_mbox*, %struct.octeon_mbox** %147, align 8
  %149 = call i32 @vfree(%struct.octeon_mbox* %148)
  br label %137

150:                                              ; preds = %137
  store i32 1, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %135, %20
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.octeon_mbox* @vmalloc(i32) #1

declare dso_local i32 @memset(%struct.octeon_mbox*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @CN23XX_SLI_MAC_PF_MBOX_INT(i32, i32) #1

declare dso_local i32 @CN23XX_SLI_PKT_PF_VF_MBOX_SIG(i64, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @vfree(%struct.octeon_mbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
