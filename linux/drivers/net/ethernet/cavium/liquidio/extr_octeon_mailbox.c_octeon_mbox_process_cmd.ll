; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_mailbox.c_octeon_mbox_process_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_mailbox.c_octeon_mbox_process_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mbox = type { i64, %struct.octeon_device* }
%struct.octeon_device = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.octeon_mbox_cmd = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32 }
%struct.lio_version = type { i32, i32, i32 }
%struct.oct_vf_stats = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"got vfactive sending data back\0A\00", align 1
@OCTEON_MBOX_RESPONSE = common dso_local global i8* null, align 8
@LIQUIDIO_BASE_MAJOR_VERSION = common dso_local global i32 0, align 4
@LIQUIDIO_BASE_MINOR_VERSION = common dso_local global i32 0, align 4
@LIQUIDIO_BASE_MICRO_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"got a request for FLR from VF that owns DPI ring %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Got VF stats request. Sending data back\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_mbox*, %struct.octeon_mbox_cmd*)* @octeon_mbox_process_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mbox_process_cmd(%struct.octeon_mbox* %0, %struct.octeon_mbox_cmd* %1) #0 {
  %3 = alloca %struct.octeon_mbox*, align 8
  %4 = alloca %struct.octeon_mbox_cmd*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  store %struct.octeon_mbox* %0, %struct.octeon_mbox** %3, align 8
  store %struct.octeon_mbox_cmd* %1, %struct.octeon_mbox_cmd** %4, align 8
  %6 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %6, i32 0, i32 1
  %8 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  store %struct.octeon_device* %8, %struct.octeon_device** %5, align 8
  %9 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %129 [
    i32 129, label %14
    i32 128, label %69
    i32 130, label %88
    i32 131, label %101
  ]

14:                                               ; preds = %2
  %15 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** @OCTEON_MBOX_RESPONSE, align 8
  %21 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i8* %20, i8** %24, align 8
  %25 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i32 2, i32* %32, align 8
  %33 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* @LIQUIDIO_BASE_MAJOR_VERSION, align 4
  %38 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = bitcast i32* %41 to %struct.lio_version*
  %43 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %42, i32 0, i32 2
  store i32 %37, i32* %43, align 4
  %44 = load i32, i32* @LIQUIDIO_BASE_MINOR_VERSION, align 4
  %45 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = bitcast i32* %48 to %struct.lio_version*
  %50 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %49, i32 0, i32 1
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* @LIQUIDIO_BASE_MICRO_VERSION, align 4
  %52 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = bitcast i32* %55 to %struct.lio_version*
  %57 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %56, i32 0, i32 0
  store i32 %51, i32* %57, align 4
  %58 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %64 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %63, i32 0, i32 2
  %65 = call i32 @memcpy(i32 %62, i32* %64, i32 6)
  %66 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %67 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %68 = call i32 @octeon_mbox_write(%struct.octeon_device* %66, %struct.octeon_mbox_cmd* %67)
  br label %130

69:                                               ; preds = %2
  %70 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %71 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %75 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @dev_info(i32* %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %79 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %83 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pcie_flr(i32 %86)
  br label %130

88:                                               ; preds = %2
  %89 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %90 = call i32 @OCTEON_CN23XX_VF(%struct.octeon_device* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %94 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %95 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @octeon_pf_changed_vf_macaddr(%struct.octeon_device* %93, i32 %98)
  br label %100

100:                                              ; preds = %92, %88
  br label %130

101:                                              ; preds = %2
  %102 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %103 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = call i32 @dev_dbg(i32* %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i8*, i8** @OCTEON_MBOX_RESPONSE, align 8
  %108 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %109 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  store i8* %107, i8** %111, align 8
  %112 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %113 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %117 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  store i32 2, i32* %119, align 8
  %120 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %121 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %122 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = bitcast i32* %123 to %struct.oct_vf_stats*
  %125 = call i32 @get_vf_stats(%struct.octeon_device* %120, %struct.oct_vf_stats* %124)
  %126 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %127 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %4, align 8
  %128 = call i32 @octeon_mbox_write(%struct.octeon_device* %126, %struct.octeon_mbox_cmd* %127)
  br label %130

129:                                              ; preds = %2
  br label %130

130:                                              ; preds = %129, %101, %100, %69, %14
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @octeon_mbox_write(%struct.octeon_device*, %struct.octeon_mbox_cmd*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @pcie_flr(i32) #1

declare dso_local i32 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32 @octeon_pf_changed_vf_macaddr(%struct.octeon_device*, i32) #1

declare dso_local i32 @get_vf_stats(%struct.octeon_device*, %struct.oct_vf_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
