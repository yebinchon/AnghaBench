; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_alloc_mem_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_alloc_mem_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i32, i32, i32*, i32*, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@NORMAL_MTU_SIZE = common dso_local global i64 0, align 8
@NUM_LBUFQ_ENTRIES = common dso_local global i32 0, align 4
@JUMBO_MTU_SIZE = common dso_local global i64 0, align 8
@JUMBO_NUM_LBUFQ_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Invalid mtu size: %d.  Only %d and %d are accepted.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QL_ADDR_ELE_PER_BUFQ_ENTRY = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_ID_LEN = common dso_local global i64 0, align 8
@QL_HEADER_SPACE = common dso_local global i64 0, align 8
@ETHERNET_CRC_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"shadowReg Alloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ql_alloc_net_req_rsp_queues failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ql_alloc_buffer_queues failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"ql_alloc_small_buffers failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ql_alloc_large_buffers failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_alloc_mem_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_alloc_mem_resources(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  %4 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %4, i32 0, i32 7
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NORMAL_MTU_SIZE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @NUM_LBUFQ_ENTRIES, align 4
  %13 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* @NORMAL_MTU_SIZE, align 8
  %16 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %16, i32 0, i32 14
  store i64 %15, i64* %17, align 8
  br label %48

18:                                               ; preds = %1
  %19 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %19, i32 0, i32 7
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @JUMBO_MTU_SIZE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i32, i32* @JUMBO_NUM_LBUFQ_ENTRIES, align 4
  %28 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* @JUMBO_MTU_SIZE, align 8
  %31 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %31, i32 0, i32 14
  store i64 %30, i64* %32, align 8
  br label %47

33:                                               ; preds = %18
  %34 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %34, i32 0, i32 7
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %37, i32 0, i32 7
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NORMAL_MTU_SIZE, align 8
  %43 = load i64, i64* @JUMBO_MTU_SIZE, align 8
  %44 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_err(%struct.TYPE_2__* %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42, i64 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %201

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47, %11
  %49 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @QL_ADDR_ELE_PER_BUFQ_ENTRY, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %57 = load i64, i64* @VLAN_ID_LEN, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* @QL_HEADER_SPACE, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %61, i32 0, i32 14
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %65, i32 0, i32 14
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @QL_HEADER_SPACE, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i64, i64* @ETHERNET_CRC_SIZE, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %72, i32 0, i32 15
  store i64 %71, i64* %73, align 8
  %74 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %78, i32 0, i32 2
  %80 = call i32* @pci_alloc_consistent(i32 %76, i32 %77, i32* %79)
  %81 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %81, i32 0, i32 3
  store i32* %80, i32** %82, align 8
  %83 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %122

87:                                               ; preds = %48
  %88 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %91, i32 0, i32 12
  store i32* %90, i32** %92, align 8
  %93 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @MS_64BITS(i32 %95)
  %97 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %97, i32 0, i32 10
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @LS_64BITS(i32 %101)
  %103 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %103, i32 0, i32 8
  store i64 %102, i64* %104, align 8
  %105 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %105, i32 0, i32 12
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  %109 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %109, i32 0, i32 13
  store i32* %108, i32** %110, align 8
  %111 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 8
  %120 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %120, i32 0, i32 9
  store i64 %119, i64* %121, align 8
  br label %129

122:                                              ; preds = %48
  %123 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %123, i32 0, i32 7
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_err(%struct.TYPE_2__* %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %201

129:                                              ; preds = %87
  %130 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %131 = call i64 @ql_alloc_net_req_rsp_queues(%struct.ql3_adapter* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %134, i32 0, i32 7
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_err(%struct.TYPE_2__* %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %187

138:                                              ; preds = %129
  %139 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %140 = call i64 @ql_alloc_buffer_queues(%struct.ql3_adapter* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %144 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %143, i32 0, i32 7
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_err(%struct.TYPE_2__* %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %184

147:                                              ; preds = %138
  %148 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %149 = call i64 @ql_alloc_small_buffers(%struct.ql3_adapter* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %152, i32 0, i32 7
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_err(%struct.TYPE_2__* %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %181

156:                                              ; preds = %147
  %157 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %158 = call i64 @ql_alloc_large_buffers(%struct.ql3_adapter* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %161, i32 0, i32 7
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_err(%struct.TYPE_2__* %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %181

165:                                              ; preds = %156
  %166 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %167 = call i32 @ql_init_large_buffers(%struct.ql3_adapter* %166)
  %168 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %169 = call i64 @ql_create_send_free_list(%struct.ql3_adapter* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %178

172:                                              ; preds = %165
  %173 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %174 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %177 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 8
  store i32 0, i32* %2, align 4
  br label %201

178:                                              ; preds = %171
  %179 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %180 = call i32 @ql_free_send_free_list(%struct.ql3_adapter* %179)
  br label %181

181:                                              ; preds = %178, %160, %151
  %182 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %183 = call i32 @ql_free_buffer_queues(%struct.ql3_adapter* %182)
  br label %184

184:                                              ; preds = %181, %142
  %185 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %186 = call i32 @ql_free_net_req_rsp_queues(%struct.ql3_adapter* %185)
  br label %187

187:                                              ; preds = %184, %133
  %188 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %189 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @PAGE_SIZE, align 4
  %192 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %193 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @pci_free_consistent(i32 %190, i32 %191, i32* %194, i32 %197)
  %199 = load i32, i32* @ENOMEM, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %187, %172, %122, %33
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @netdev_err(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @MS_64BITS(i32) #1

declare dso_local i64 @LS_64BITS(i32) #1

declare dso_local i64 @ql_alloc_net_req_rsp_queues(%struct.ql3_adapter*) #1

declare dso_local i64 @ql_alloc_buffer_queues(%struct.ql3_adapter*) #1

declare dso_local i64 @ql_alloc_small_buffers(%struct.ql3_adapter*) #1

declare dso_local i64 @ql_alloc_large_buffers(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_init_large_buffers(%struct.ql3_adapter*) #1

declare dso_local i64 @ql_create_send_free_list(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_free_send_free_list(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_free_buffer_queues(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_free_net_req_rsp_queues(%struct.ql3_adapter*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
