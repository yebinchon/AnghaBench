; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_mac_from_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_mac_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_mac_list = type { i32, i32, i32, %struct.get_list_macaddr*, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_12__ }
%struct.get_list_macaddr = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_resp_get_mac_list* }
%struct.be_cmd_resp_get_mac_list = type { i32, i32, i32, %struct.get_list_macaddr*, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_12__ }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Memory allocation failure during GET_MAC_LIST\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_MAC_LIST = common dso_local global i32 0, align 4
@MAC_ADDRESS_TYPE_NETWORK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_mac_from_list(%struct.be_adapter* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.be_mcc_wrb*, align 8
  %15 = alloca %struct.be_cmd_req_get_mac_list*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.be_dma_mem, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.be_cmd_resp_get_mac_list*, align 8
  %21 = alloca %struct.get_list_macaddr*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = call i32 @memset(%struct.be_dma_mem* %18, i32 0, i32 16)
  %25 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 0
  store i32 48, i32* %25, align 8
  %26 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %27 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 1
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.be_cmd_resp_get_mac_list* @dma_alloc_coherent(i32* %29, i32 %31, i32* %32, i32 %33)
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 2
  store %struct.be_cmd_resp_get_mac_list* %34, %struct.be_cmd_resp_get_mac_list** %35, align 8
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 2
  %37 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %36, align 8
  %38 = icmp ne %struct.be_cmd_resp_get_mac_list* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %6
  %40 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %41 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %184

47:                                               ; preds = %6
  %48 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %49 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %48, i32 0, i32 1
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %52 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %51)
  store %struct.be_mcc_wrb* %52, %struct.be_mcc_wrb** %14, align 8
  %53 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %14, align 8
  %54 = icmp ne %struct.be_mcc_wrb* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %16, align 4
  br label %168

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 2
  %60 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %59, align 8
  %61 = bitcast %struct.be_cmd_resp_get_mac_list* %60 to %struct.be_cmd_req_get_mac_list*
  store %struct.be_cmd_req_get_mac_list* %61, %struct.be_cmd_req_get_mac_list** %15, align 8
  %62 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %15, align 8
  %63 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %62, i32 0, i32 8
  %64 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %65 = load i32, i32* @OPCODE_COMMON_GET_MAC_LIST, align 4
  %66 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %14, align 8
  %69 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_12__* %63, i32 %64, i32 %65, i32 %67, %struct.be_mcc_wrb* %68, %struct.be_dma_mem* %18)
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %15, align 8
  %72 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @MAC_ADDRESS_TYPE_NETWORK, align 4
  %75 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %15, align 8
  %76 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %58
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cpu_to_le32(i32 %82)
  %84 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %15, align 8
  %85 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @cpu_to_le16(i32 %86)
  %88 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %15, align 8
  %89 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %15, align 8
  %91 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %95

92:                                               ; preds = %58
  %93 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %15, align 8
  %94 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %80
  %96 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %97 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %167, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 2
  %102 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %101, align 8
  store %struct.be_cmd_resp_get_mac_list* %102, %struct.be_cmd_resp_get_mac_list** %20, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %20, align 8
  %109 = getelementptr inbounds %struct.be_cmd_resp_get_mac_list, %struct.be_cmd_resp_get_mac_list* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ETH_ALEN, align 4
  %114 = call i32 @memcpy(i32* %107, i32 %112, i32 %113)
  br label %168

115:                                              ; preds = %100
  %116 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %20, align 8
  %117 = getelementptr inbounds %struct.be_cmd_resp_get_mac_list, %struct.be_cmd_resp_get_mac_list* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %20, align 8
  %120 = getelementptr inbounds %struct.be_cmd_resp_get_mac_list, %struct.be_cmd_resp_get_mac_list* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %118, %121
  store i32 %122, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %123

123:                                              ; preds = %152, %115
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %123
  %128 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %20, align 8
  %129 = getelementptr inbounds %struct.be_cmd_resp_get_mac_list, %struct.be_cmd_resp_get_mac_list* %128, i32 0, i32 3
  %130 = load %struct.get_list_macaddr*, %struct.get_list_macaddr** %129, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.get_list_macaddr, %struct.get_list_macaddr* %130, i64 %132
  store %struct.get_list_macaddr* %133, %struct.get_list_macaddr** %21, align 8
  %134 = load %struct.get_list_macaddr*, %struct.get_list_macaddr** %21, align 8
  %135 = getelementptr inbounds %struct.get_list_macaddr, %struct.get_list_macaddr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le16_to_cpu(i32 %136)
  store i32 %137, i32* %22, align 4
  %138 = load i32, i32* %22, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp eq i64 %139, 4
  br i1 %140, label %141, label %151

141:                                              ; preds = %127
  %142 = load i32*, i32** %10, align 8
  store i32 1, i32* %142, align 4
  %143 = load %struct.get_list_macaddr*, %struct.get_list_macaddr** %21, align 8
  %144 = getelementptr inbounds %struct.get_list_macaddr, %struct.get_list_macaddr* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %23, align 4
  %149 = call i32 @le32_to_cpu(i32 %148)
  %150 = load i32*, i32** %11, align 8
  store i32 %149, i32* %150, align 4
  br label %168

151:                                              ; preds = %127
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %19, align 4
  br label %123

155:                                              ; preds = %123
  %156 = load i32*, i32** %10, align 8
  store i32 0, i32* %156, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %20, align 8
  %159 = getelementptr inbounds %struct.be_cmd_resp_get_mac_list, %struct.be_cmd_resp_get_mac_list* %158, i32 0, i32 3
  %160 = load %struct.get_list_macaddr*, %struct.get_list_macaddr** %159, align 8
  %161 = getelementptr inbounds %struct.get_list_macaddr, %struct.get_list_macaddr* %160, i64 0
  %162 = getelementptr inbounds %struct.get_list_macaddr, %struct.get_list_macaddr* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @ETH_ALEN, align 4
  %166 = call i32 @memcpy(i32* %157, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %155, %95
  br label %168

168:                                              ; preds = %167, %141, %106, %55
  %169 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %170 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %169, i32 0, i32 1
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %173 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %172, i32 0, i32 0
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 2
  %179 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %178, align 8
  %180 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %18, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dma_free_coherent(i32* %175, i32 %177, %struct.be_cmd_resp_get_mac_list* %179, i32 %181)
  %183 = load i32, i32* %16, align 4
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %168, %39
  %185 = load i32, i32* %7, align 4
  ret i32 %185
}

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.be_cmd_resp_get_mac_list* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_12__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_cmd_resp_get_mac_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
