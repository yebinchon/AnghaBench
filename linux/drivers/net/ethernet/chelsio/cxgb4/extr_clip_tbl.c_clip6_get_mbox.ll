; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_clip_tbl.c_clip6_get_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_clip_tbl.c_clip6_get_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i64 }
%struct.adapter = type { i32 }
%struct.fw_clip_cmd = type { i32, i32, i8*, i8* }

@FW_CLIP_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_CLIP_CMD_ALLOC_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.in6_addr*)* @clip6_get_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip6_get_mbox(%struct.net_device* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.fw_clip_cmd, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.adapter* @netdev2adap(%struct.net_device* %7)
  store %struct.adapter* %8, %struct.adapter** %5, align 8
  %9 = call i32 @memset(%struct.fw_clip_cmd* %6, i32 0, i32 24)
  %10 = load i32, i32* @FW_CLIP_CMD, align 4
  %11 = call i32 @FW_CMD_OP_V(i32 %10)
  %12 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @htonl(i32 %15)
  %17 = getelementptr inbounds %struct.fw_clip_cmd, %struct.fw_clip_cmd* %6, i32 0, i32 3
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @FW_CLIP_CMD_ALLOC_F, align 4
  %19 = call i32 @FW_LEN16(%struct.fw_clip_cmd* byval(%struct.fw_clip_cmd) align 8 %6)
  %20 = or i32 %18, %19
  %21 = call i8* @htonl(i32 %20)
  %22 = getelementptr inbounds %struct.fw_clip_cmd, %struct.fw_clip_cmd* %6, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %24 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.fw_clip_cmd, %struct.fw_clip_cmd* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %30 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.fw_clip_cmd, %struct.fw_clip_cmd* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = load %struct.adapter*, %struct.adapter** %5, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @t4_wr_mbox_meat(%struct.adapter* %36, i32 %39, %struct.fw_clip_cmd* %6, i32 24, %struct.fw_clip_cmd* %6, i32 0)
  ret i32 %40
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.fw_clip_cmd*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_clip_cmd* byval(%struct.fw_clip_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_clip_cmd*, i32, %struct.fw_clip_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
