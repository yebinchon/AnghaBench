; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_rcv_msg_from_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_rcv_msg_from_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.vf_data_storage*, %struct.e1000_hw, %struct.pci_dev* }
%struct.vf_data_storage = type { i32, i32, i64 }
%struct.e1000_hw = type { i32 }
%struct.pci_dev = type { i32 }

@E1000_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error receiving message from VF\0A\00", align 1
@IGB_VF_FLAG_CTS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_ACK = common dso_local global i64 0, align 8
@E1000_VT_MSGTYPE_NACK = common dso_local global i64 0, align 8
@E1000_VF_RESET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [101 x i8] c"VF %d attempted to override administratively set VLAN tag\0AReload the VF driver to resume operations\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unhandled Msg %08x\0A\00", align 1
@E1000_VT_MSGTYPE_CTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i64)* @igb_rcv_msg_from_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_rcv_msg_from_vf(%struct.igb_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca %struct.vf_data_storage*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 1
  store %struct.e1000_hw* %20, %struct.e1000_hw** %8, align 8
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %21, i32 0, i32 0
  %23 = load %struct.vf_data_storage*, %struct.vf_data_storage** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %23, i64 %24
  store %struct.vf_data_storage* %25, %struct.vf_data_storage** %9, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %27 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @igb_read_mbx(%struct.e1000_hw* %26, i64* %18, i32 %27, i64 %28, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %2
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @IGB_VF_FLAG_CTS, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %39 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %44 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 2, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = call i32 @time_after(i32 %42, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %32
  br label %157

53:                                               ; preds = %32
  br label %140

54:                                               ; preds = %2
  %55 = getelementptr inbounds i64, i64* %18, i64 0
  %56 = load i64, i64* %55, align 16
  %57 = load i64, i64* @E1000_VT_MSGTYPE_ACK, align 8
  %58 = load i64, i64* @E1000_VT_MSGTYPE_NACK, align 8
  %59 = or i64 %57, %58
  %60 = and i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %157

63:                                               ; preds = %54
  %64 = getelementptr inbounds i64, i64* %18, i64 0
  %65 = load i64, i64* %64, align 16
  %66 = load i64, i64* @E1000_VF_RESET, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @igb_vf_reset_msg(%struct.igb_adapter* %69, i64 %70)
  store i32 1, i32* %11, align 4
  br label %161

72:                                               ; preds = %63
  %73 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %74 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IGB_VF_FLAG_CTS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @jiffies, align 4
  %81 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %82 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @HZ, align 4
  %85 = mul nsw i32 2, %84
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %83, %86
  %88 = call i32 @time_after(i32 %80, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  br label %157

91:                                               ; preds = %79
  store i32 -1, i32* %10, align 4
  br label %140

92:                                               ; preds = %72
  %93 = getelementptr inbounds i64, i64* %18, i64 0
  %94 = load i64, i64* %93, align 16
  %95 = and i64 %94, 65535
  switch i64 %95, label %129 [
    i64 131, label %96
    i64 129, label %100
    i64 130, label %104
    i64 132, label %108
    i64 128, label %114
  ]

96:                                               ; preds = %92
  %97 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @igb_set_vf_mac_addr(%struct.igb_adapter* %97, i64* %18, i64 %98)
  store i32 %99, i32* %10, align 4
  br label %135

100:                                              ; preds = %92
  %101 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @igb_set_vf_promisc(%struct.igb_adapter* %101, i64* %18, i64 %102)
  store i32 %103, i32* %10, align 4
  br label %135

104:                                              ; preds = %92
  %105 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %106 = load i64, i64* %4, align 8
  %107 = call i32 @igb_set_vf_multicasts(%struct.igb_adapter* %105, i64* %18, i64 %106)
  store i32 %107, i32* %10, align 4
  br label %135

108:                                              ; preds = %92
  %109 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %110 = getelementptr inbounds i64, i64* %18, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @igb_set_vf_rlpml(%struct.igb_adapter* %109, i64 %111, i64 %112)
  store i32 %113, i32* %10, align 4
  br label %135

114:                                              ; preds = %92
  store i32 -1, i32* %10, align 4
  %115 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %116 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 0
  %122 = load i64, i64* %4, align 8
  %123 = call i32 @dev_warn(i32* %121, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i64 %122)
  br label %128

124:                                              ; preds = %114
  %125 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %126 = load i64, i64* %4, align 8
  %127 = call i32 @igb_set_vf_vlan_msg(%struct.igb_adapter* %125, i64* %18, i64 %126)
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %124, %119
  br label %135

129:                                              ; preds = %92
  %130 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds i64, i64* %18, i64 0
  %133 = load i64, i64* %132, align 16
  %134 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %133)
  store i32 -1, i32* %10, align 4
  br label %135

135:                                              ; preds = %129, %128, %108, %104, %100, %96
  %136 = load i64, i64* @E1000_VT_MSGTYPE_CTS, align 8
  %137 = getelementptr inbounds i64, i64* %18, i64 0
  %138 = load i64, i64* %137, align 16
  %139 = or i64 %138, %136
  store i64 %139, i64* %137, align 16
  br label %140

140:                                              ; preds = %135, %91, %53
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i64, i64* @E1000_VT_MSGTYPE_NACK, align 8
  %145 = getelementptr inbounds i64, i64* %18, i64 0
  %146 = load i64, i64* %145, align 16
  %147 = or i64 %146, %144
  store i64 %147, i64* %145, align 16
  br label %153

148:                                              ; preds = %140
  %149 = load i64, i64* @E1000_VT_MSGTYPE_ACK, align 8
  %150 = getelementptr inbounds i64, i64* %18, i64 0
  %151 = load i64, i64* %150, align 16
  %152 = or i64 %151, %149
  store i64 %152, i64* %150, align 16
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %155 = load i64, i64* %4, align 8
  %156 = call i32 @igb_write_mbx(%struct.e1000_hw* %154, i64* %18, i32 1, i64 %155)
  store i32 1, i32* %11, align 4
  br label %161

157:                                              ; preds = %90, %62, %52
  %158 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %159 = load i64, i64* %4, align 8
  %160 = call i32 @igb_unlock_mbx(%struct.e1000_hw* %158, i64 %159)
  store i32 0, i32* %11, align 4
  br label %161

161:                                              ; preds = %157, %153, %68
  %162 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %11, align 4
  switch i32 %163, label %165 [
    i32 0, label %164
    i32 1, label %164
  ]

164:                                              ; preds = %161, %161
  ret void

165:                                              ; preds = %161
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @igb_read_mbx(%struct.e1000_hw*, i64*, i32, i64, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @time_after(i32, i64) #2

declare dso_local i32 @igb_vf_reset_msg(%struct.igb_adapter*, i64) #2

declare dso_local i32 @igb_set_vf_mac_addr(%struct.igb_adapter*, i64*, i64) #2

declare dso_local i32 @igb_set_vf_promisc(%struct.igb_adapter*, i64*, i64) #2

declare dso_local i32 @igb_set_vf_multicasts(%struct.igb_adapter*, i64*, i64) #2

declare dso_local i32 @igb_set_vf_rlpml(%struct.igb_adapter*, i64, i64) #2

declare dso_local i32 @dev_warn(i32*, i8*, i64) #2

declare dso_local i32 @igb_set_vf_vlan_msg(%struct.igb_adapter*, i64*, i64) #2

declare dso_local i32 @igb_write_mbx(%struct.e1000_hw*, i64*, i32, i64) #2

declare dso_local i32 @igb_unlock_mbx(%struct.e1000_hw*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
