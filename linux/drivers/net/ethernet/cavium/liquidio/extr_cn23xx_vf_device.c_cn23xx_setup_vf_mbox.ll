; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_setup_vf_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_setup_vf_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.octeon_mbox**, %struct.TYPE_3__* }
%struct.octeon_mbox = type { i32*, %struct.TYPE_4__, i32*, i32*, i32, i64, %struct.octeon_device*, i32 }
%struct.TYPE_4__ = type { %struct.octeon_mbox*, i32 }
%struct.TYPE_3__ = type { i64 }

@OCTEON_MBOX_STATE_IDLE = common dso_local global i32 0, align 4
@cn23xx_vf_mbox_thread = common dso_local global i32 0, align 4
@OCTEON_PFVFSIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @cn23xx_setup_vf_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn23xx_setup_vf_mbox(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.octeon_mbox*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.octeon_mbox* null, %struct.octeon_mbox** %4, align 8
  %5 = call %struct.octeon_mbox* @vmalloc(i32 72)
  store %struct.octeon_mbox* %5, %struct.octeon_mbox** %4, align 8
  %6 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %7 = icmp ne %struct.octeon_mbox* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %78

9:                                                ; preds = %1
  %10 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %11 = call i32 @memset(%struct.octeon_mbox* %10, i32 0, i32 72)
  %12 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %13 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %12, i32 0, i32 7
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %17 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %16, i32 0, i32 6
  store %struct.octeon_device* %15, %struct.octeon_device** %17, align 8
  %18 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %19 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @OCTEON_MBOX_STATE_IDLE, align 4
  %21 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %22 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @CN23XX_VF_SLI_PKT_MBOX_INT(i32 0)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %34 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @CN23XX_SLI_PKT_PF_VF_MBOX_SIG(i32 0, i32 0)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %46 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  %47 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @CN23XX_SLI_PKT_PF_VF_MBOX_SIG(i32 0, i32 1)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %58 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %60 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* @cn23xx_vf_mbox_thread, align 4
  %63 = call i32 @INIT_DELAYED_WORK(i32* %61, i32 %62)
  %64 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %65 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %66 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store %struct.octeon_mbox* %64, %struct.octeon_mbox** %67, align 8
  %68 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %69 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 0
  %71 = load %struct.octeon_mbox**, %struct.octeon_mbox*** %70, align 8
  %72 = getelementptr inbounds %struct.octeon_mbox*, %struct.octeon_mbox** %71, i64 0
  store %struct.octeon_mbox* %68, %struct.octeon_mbox** %72, align 8
  %73 = load i32, i32* @OCTEON_PFVFSIG, align 4
  %74 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %75 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @writeq(i32 %73, i32* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %9, %8
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.octeon_mbox* @vmalloc(i32) #1

declare dso_local i32 @memset(%struct.octeon_mbox*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @CN23XX_VF_SLI_PKT_MBOX_INT(i32) #1

declare dso_local i32 @CN23XX_SLI_PKT_PF_VF_MBOX_SIG(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @writeq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
