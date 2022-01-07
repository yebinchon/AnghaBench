; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_octnet_mdio45_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_octnet_mdio45_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_8__, %struct.octeon_device* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.octeon_soft_command = type { i32, i32, i32, i32, i64, i64 }
%struct.oct_mdio_cmd_resp = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.oct_mdio_cmd = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_MDIO45 = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"octnet_mdio45_access instruction failed status: %x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"octnet mdio45 access failed: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*, i32, i32, i32*)* @octnet_mdio45_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octnet_mdio45_access(%struct.lio* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.octeon_device*, align 8
  %11 = alloca %struct.octeon_soft_command*, align 8
  %12 = alloca %struct.oct_mdio_cmd_resp*, align 8
  %13 = alloca %struct.oct_mdio_cmd*, align 8
  %14 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.lio*, %struct.lio** %6, align 8
  %16 = getelementptr inbounds %struct.lio, %struct.lio* %15, i32 0, i32 1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %16, align 8
  store %struct.octeon_device* %17, %struct.octeon_device** %10, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  %19 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %18, i32 12, i32 8, i32 0)
  %20 = inttoptr i64 %19 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %20, %struct.octeon_soft_command** %11, align 8
  %21 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %22 = icmp ne %struct.octeon_soft_command* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %138

26:                                               ; preds = %4
  %27 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %28 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.oct_mdio_cmd_resp*
  store %struct.oct_mdio_cmd_resp* %30, %struct.oct_mdio_cmd_resp** %12, align 8
  %31 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %32 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.oct_mdio_cmd*
  store %struct.oct_mdio_cmd* %34, %struct.oct_mdio_cmd** %13, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.oct_mdio_cmd*, %struct.oct_mdio_cmd** %13, align 8
  %37 = getelementptr inbounds %struct.oct_mdio_cmd, %struct.oct_mdio_cmd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.oct_mdio_cmd*, %struct.oct_mdio_cmd** %13, align 8
  %40 = getelementptr inbounds %struct.oct_mdio_cmd, %struct.oct_mdio_cmd* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.oct_mdio_cmd*, %struct.oct_mdio_cmd** %13, align 8
  %47 = getelementptr inbounds %struct.oct_mdio_cmd, %struct.oct_mdio_cmd* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %26
  %49 = load %struct.oct_mdio_cmd*, %struct.oct_mdio_cmd** %13, align 8
  %50 = bitcast %struct.oct_mdio_cmd* %49 to i32*
  %51 = call i32 @octeon_swap_8B_data(i32* %50, i32 1)
  %52 = load %struct.lio*, %struct.lio** %6, align 8
  %53 = getelementptr inbounds %struct.lio, %struct.lio* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %61 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  %63 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %64 = load i32, i32* @OPCODE_NIC, align 4
  %65 = load i32, i32* @OPCODE_NIC_MDIO45, align 4
  %66 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %62, %struct.octeon_soft_command* %63, i32 %64, i32 %65, i32 0, i32 0, i32 0)
  %67 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %68 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %67, i32 0, i32 2
  %69 = call i32 @init_completion(i32* %68)
  %70 = load i32, i32* @OCTEON_REQUEST_PENDING, align 4
  %71 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %72 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  %74 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %75 = call i32 @octeon_send_soft_command(%struct.octeon_device* %73, %struct.octeon_soft_command* %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @IQ_SEND_FAILED, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %48
  %80 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  %81 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  %87 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %88 = call i32 @octeon_free_soft_command(%struct.octeon_device* %86, %struct.octeon_soft_command* %87)
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %138

91:                                               ; preds = %48
  %92 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  %93 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %94 = call i32 @wait_for_sc_completion_timeout(%struct.octeon_device* %92, %struct.octeon_soft_command* %93, i32 0)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %5, align 4
  br label %138

99:                                               ; preds = %91
  %100 = load %struct.oct_mdio_cmd_resp*, %struct.oct_mdio_cmd_resp** %12, align 8
  %101 = getelementptr inbounds %struct.oct_mdio_cmd_resp, %struct.oct_mdio_cmd_resp* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  %107 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %113 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @WRITE_ONCE(i32 %114, i32 1)
  %116 = load i32, i32* @EBUSY, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %138

118:                                              ; preds = %99
  %119 = load %struct.oct_mdio_cmd_resp*, %struct.oct_mdio_cmd_resp** %12, align 8
  %120 = getelementptr inbounds %struct.oct_mdio_cmd_resp, %struct.oct_mdio_cmd_resp* %119, i32 0, i32 1
  %121 = bitcast %struct.TYPE_10__* %120 to i32*
  %122 = call i32 @octeon_swap_8B_data(i32* %121, i32 1)
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %118
  %126 = load %struct.oct_mdio_cmd_resp*, %struct.oct_mdio_cmd_resp** %12, align 8
  %127 = getelementptr inbounds %struct.oct_mdio_cmd_resp, %struct.oct_mdio_cmd_resp* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %125, %118
  %132 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %133 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @WRITE_ONCE(i32 %134, i32 1)
  br label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %105, %97, %79, %23
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @wait_for_sc_completion_timeout(%struct.octeon_device*, %struct.octeon_soft_command*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
