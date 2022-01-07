; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_msg_handle_rxmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_msg_handle_rxmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_pf = type { %struct.TYPE_4__*, %struct.enetc_msg_swbd* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.enetc_msg_swbd = type { i64 }
%struct.enetc_msg_cmd_header = type { i32 }

@ENETC_MSG_CMD_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"command not supported (cmd_type: 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enetc_msg_handle_rxmsg(%struct.enetc_pf* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.enetc_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.enetc_msg_swbd*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.enetc_msg_cmd_header*, align 8
  %10 = alloca i32, align 4
  store %struct.enetc_pf* %0, %struct.enetc_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %12 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %11, i32 0, i32 1
  %13 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %13, i64 %15
  store %struct.enetc_msg_swbd* %16, %struct.enetc_msg_swbd** %7, align 8
  %17 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %18 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %8, align 8
  %23 = load i32, i32* @ENETC_MSG_CMD_STATUS_OK, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %7, align 8
  %26 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.enetc_msg_cmd_header*
  store %struct.enetc_msg_cmd_header* %28, %struct.enetc_msg_cmd_header** %9, align 8
  %29 = load %struct.enetc_msg_cmd_header*, %struct.enetc_msg_cmd_header** %9, align 8
  %30 = getelementptr inbounds %struct.enetc_msg_cmd_header, %struct.enetc_msg_cmd_header* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %38 [
    i32 128, label %33
  ]

33:                                               ; preds = %3
  %34 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @enetc_msg_pf_set_vf_primary_mac_addr(%struct.enetc_pf* %34, i32 %35)
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %42

38:                                               ; preds = %3
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @enetc_msg_pf_set_vf_primary_mac_addr(%struct.enetc_pf*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
