; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_rcv_msg_from_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_rcv_msg_from_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_2__*, %struct.ixgbe_hw }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error receiving message from VF\0A\00", align 1
@IXGBE_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@IXGBE_VF_RESET = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unhandled Msg %8.8x\0A\00", align 1
@IXGBE_ERR_MBX = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32)* @ixgbe_rcv_msg_from_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_rcv_msg_from_vf(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @IXGBE_VFMAILBOX_SIZE, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @IXGBE_VFMAILBOX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 1
  store %struct.ixgbe_hw* %18, %struct.ixgbe_hw** %9, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ixgbe_read_mbx(%struct.ixgbe_hw* %19, i32* %16, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %147

28:                                               ; preds = %2
  %29 = getelementptr inbounds i32, i32* %16, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %32 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %147

37:                                               ; preds = %28
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %39 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %38)
  %40 = getelementptr inbounds i32, i32* %16, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = load i32, i32* @IXGBE_VF_RESET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ixgbe_vf_reset_msg(%struct.ixgbe_adapter* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %147

48:                                               ; preds = %37
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %60 = getelementptr inbounds i32, i32* %16, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 16
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @ixgbe_write_mbx(%struct.ixgbe_hw* %63, i32* %16, i32 1, i32 %64)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %147

66:                                               ; preds = %48
  %67 = getelementptr inbounds i32, i32* %16, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = and i32 %68, 65535
  switch i32 %69, label %118 [
    i32 131, label %70
    i32 130, label %74
    i32 129, label %78
    i32 133, label %82
    i32 132, label %86
    i32 139, label %90
    i32 138, label %94
    i32 137, label %98
    i32 136, label %102
    i32 128, label %106
    i32 135, label %110
    i32 134, label %114
  ]

70:                                               ; preds = %66
  %71 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @ixgbe_set_vf_mac_addr(%struct.ixgbe_adapter* %71, i32* %16, i32 %72)
  store i32 %73, i32* %10, align 4
  br label %124

74:                                               ; preds = %66
  %75 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @ixgbe_set_vf_multicasts(%struct.ixgbe_adapter* %75, i32* %16, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %124

78:                                               ; preds = %66
  %79 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @ixgbe_set_vf_vlan_msg(%struct.ixgbe_adapter* %79, i32* %16, i32 %80)
  store i32 %81, i32* %10, align 4
  br label %124

82:                                               ; preds = %66
  %83 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ixgbe_set_vf_lpe(%struct.ixgbe_adapter* %83, i32* %16, i32 %84)
  store i32 %85, i32* %10, align 4
  br label %124

86:                                               ; preds = %66
  %87 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @ixgbe_set_vf_macvlan_msg(%struct.ixgbe_adapter* %87, i32* %16, i32 %88)
  store i32 %89, i32* %10, align 4
  br label %124

90:                                               ; preds = %66
  %91 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @ixgbe_negotiate_vf_api(%struct.ixgbe_adapter* %91, i32* %16, i32 %92)
  store i32 %93, i32* %10, align 4
  br label %124

94:                                               ; preds = %66
  %95 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @ixgbe_get_vf_queues(%struct.ixgbe_adapter* %95, i32* %16, i32 %96)
  store i32 %97, i32* %10, align 4
  br label %124

98:                                               ; preds = %66
  %99 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ixgbe_get_vf_reta(%struct.ixgbe_adapter* %99, i32* %16, i32 %100)
  store i32 %101, i32* %10, align 4
  br label %124

102:                                              ; preds = %66
  %103 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @ixgbe_get_vf_rss_key(%struct.ixgbe_adapter* %103, i32* %16, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %124

106:                                              ; preds = %66
  %107 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @ixgbe_update_vf_xcast_mode(%struct.ixgbe_adapter* %107, i32* %16, i32 %108)
  store i32 %109, i32* %10, align 4
  br label %124

110:                                              ; preds = %66
  %111 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @ixgbe_ipsec_vf_add_sa(%struct.ixgbe_adapter* %111, i32* %16, i32 %112)
  store i32 %113, i32* %10, align 4
  br label %124

114:                                              ; preds = %66
  %115 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @ixgbe_ipsec_vf_del_sa(%struct.ixgbe_adapter* %115, i32* %16, i32 %116)
  store i32 %117, i32* %10, align 4
  br label %124

118:                                              ; preds = %66
  %119 = load i32, i32* @drv, align 4
  %120 = getelementptr inbounds i32, i32* %16, i64 0
  %121 = load i32, i32* %120, align 16
  %122 = call i32 @e_err(i32 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @IXGBE_ERR_MBX, align 4
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %118, %114, %110, %106, %102, %98, %94, %90, %86, %82, %78, %74, %70
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %129 = getelementptr inbounds i32, i32* %16, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 16
  br label %137

132:                                              ; preds = %124
  %133 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %134 = getelementptr inbounds i32, i32* %16, i64 0
  %135 = load i32, i32* %134, align 16
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 16
  br label %137

137:                                              ; preds = %132, %127
  %138 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %139 = getelementptr inbounds i32, i32* %16, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = or i32 %140, %138
  store i32 %141, i32* %139, align 16
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @ixgbe_write_mbx(%struct.ixgbe_hw* %142, i32* %16, i32 %143, i32 %144)
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %147

147:                                              ; preds = %137, %58, %44, %36, %25
  %148 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ixgbe_read_mbx(%struct.ixgbe_hw*, i32*, i32, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #2

declare dso_local i32 @ixgbe_vf_reset_msg(%struct.ixgbe_adapter*, i32) #2

declare dso_local i32 @ixgbe_write_mbx(%struct.ixgbe_hw*, i32*, i32, i32) #2

declare dso_local i32 @ixgbe_set_vf_mac_addr(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_set_vf_multicasts(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_set_vf_vlan_msg(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_set_vf_lpe(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_set_vf_macvlan_msg(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_negotiate_vf_api(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_get_vf_queues(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_get_vf_reta(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_get_vf_rss_key(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_update_vf_xcast_mode(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_ipsec_vf_add_sa(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @ixgbe_ipsec_vf_del_sa(%struct.ixgbe_adapter*, i32*, i32) #2

declare dso_local i32 @e_err(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
