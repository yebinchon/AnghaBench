; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.TYPE_4__, %struct.e1000_rx_ring*, %struct.e1000_tx_ring* }
%struct.TYPE_4__ = type { i64 }
%struct.e1000_rx_ring = type { i32, i32, i32, %struct.e1000_rx_buffer*, i64 }
%struct.e1000_rx_buffer = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_tx_ring = type { i32, i32, i32, %struct.e1000_tx_buffer*, i64 }
%struct.e1000_tx_buffer = type { i32, i64, i32, i32, i64 }
%struct.e1000_tx_desc = type { i32 }
%struct.my_u = type { i32, i32 }
%struct.e1000_rx_desc = type { i32 }
%struct.my_u.0 = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"TX Desc ring0 dump\0A\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"Tc[desc]     [Ce CoCsIpceCoS] [MssHlRSCm0Plen] [bi->dma       ] leng  ntw timestmp         bi->skb\0A\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"Td[desc]     [address 63:0  ] [VlaPoRSCm1Dlen] [bi->dma       ] leng  ntw timestmp         bi->skb\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"NTC/U\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"NTU\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"NTC\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"T%c[0x%03X]    %016llX %016llX %016llX %04X  %3X %016llX %p %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\0ARX Desc ring dump\0A\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"R[desc]      [address 63:0  ] [vl er S cks ln] [bi->dma       ] [bi->skb]\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"R[0x%03X]     %016llX %016llX %016llX %p %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Rx descriptor cache in 64bit format\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"R%04X: %08X|%08X %08X|%08X\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Tx descriptor cache in 64bit format\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"T%04X: %08X|%08X %08X|%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_dump(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_tx_ring*, align 8
  %4 = alloca %struct.e1000_rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_tx_desc*, align 8
  %7 = alloca %struct.e1000_tx_buffer*, align 8
  %8 = alloca %struct.my_u*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.e1000_rx_desc*, align 8
  %11 = alloca %struct.e1000_rx_buffer*, align 8
  %12 = alloca %struct.my_u.0*, align 8
  %13 = alloca i8*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 2
  %16 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %15, align 8
  store %struct.e1000_tx_ring* %16, %struct.e1000_tx_ring** %3, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 1
  %19 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %18, align 8
  store %struct.e1000_rx_ring* %19, %struct.e1000_rx_ring** %4, align 8
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %21 = call i32 @netif_msg_hw(%struct.e1000_adapter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %295

24:                                               ; preds = %1
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %26 = call i32 @e1000_regdump(%struct.e1000_adapter* %25)
  %27 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %31 = call i32 @netif_msg_tx_done(%struct.e1000_adapter* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %130

34:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %126, %34
  %36 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ false, %35 ], [ %45, %40 ]
  br i1 %47, label %48, label %129

48:                                               ; preds = %46
  %49 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8 %49, i32 %50)
  store %struct.e1000_tx_desc* %51, %struct.e1000_tx_desc** %6, align 8
  %52 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %52, i32 0, i32 3
  %54 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %54, i64 %56
  store %struct.e1000_tx_buffer* %57, %struct.e1000_tx_buffer** %7, align 8
  %58 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %6, align 8
  %59 = bitcast %struct.e1000_tx_desc* %58 to %struct.my_u*
  store %struct.my_u* %59, %struct.my_u** %8, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %48
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %89

72:                                               ; preds = %65, %48
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %88

79:                                               ; preds = %72
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %87

86:                                               ; preds = %79
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %87

87:                                               ; preds = %86, %85
  br label %88

88:                                               ; preds = %87, %78
  br label %89

89:                                               ; preds = %88, %71
  %90 = load %struct.my_u*, %struct.my_u** %8, align 8
  %91 = getelementptr inbounds %struct.my_u, %struct.my_u* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le64_to_cpu(i32 %92)
  %94 = and i32 %93, 1048576
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 100, i32 99
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.my_u*, %struct.my_u** %8, align 8
  %100 = getelementptr inbounds %struct.my_u, %struct.my_u* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le64_to_cpu(i32 %101)
  %103 = load %struct.my_u*, %struct.my_u** %8, align 8
  %104 = getelementptr inbounds %struct.my_u, %struct.my_u* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le64_to_cpu(i32 %105)
  %107 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %7, align 8
  %108 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %7, align 8
  %112 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %7, align 8
  %115 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %7, align 8
  %118 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %7, align 8
  %122 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %97, i32 %98, i32 %102, i32 %106, i32 %110, i32 %113, i32 %116, i32 %120, i32 %123, i8* %124)
  br label %126

126:                                              ; preds = %89
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %35

129:                                              ; preds = %46
  br label %130

130:                                              ; preds = %129, %33
  %131 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %132 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0))
  %133 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %134 = call i32 @netif_msg_rx_status(%struct.e1000_adapter* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  br label %294

137:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %198, %137
  %139 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %140 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %146 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br label %149

149:                                              ; preds = %143, %138
  %150 = phi i1 [ false, %138 ], [ %148, %143 ]
  br i1 %150, label %151, label %201

151:                                              ; preds = %149
  %152 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8 %152, i32 %153)
  store %struct.e1000_rx_desc* %154, %struct.e1000_rx_desc** %10, align 8
  %155 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %156 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %155, i32 0, i32 3
  %157 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %157, i64 %159
  store %struct.e1000_rx_buffer* %160, %struct.e1000_rx_buffer** %11, align 8
  %161 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %10, align 8
  %162 = bitcast %struct.e1000_rx_desc* %161 to %struct.my_u.0*
  store %struct.my_u.0* %162, %struct.my_u.0** %12, align 8
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %165 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %151
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %178

169:                                              ; preds = %151
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %172 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %170, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %177

176:                                              ; preds = %169
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %177

177:                                              ; preds = %176, %175
  br label %178

178:                                              ; preds = %177, %168
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.my_u.0*, %struct.my_u.0** %12, align 8
  %181 = getelementptr inbounds %struct.my_u.0, %struct.my_u.0* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @le64_to_cpu(i32 %182)
  %184 = load %struct.my_u.0*, %struct.my_u.0** %12, align 8
  %185 = getelementptr inbounds %struct.my_u.0, %struct.my_u.0* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @le64_to_cpu(i32 %186)
  %188 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %11, align 8
  %189 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %11, align 8
  %193 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %179, i32 %183, i32 %187, i32 %191, i32 %195, i8* %196)
  br label %198

198:                                              ; preds = %178
  %199 = load i32, i32* %5, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %5, align 4
  br label %138

201:                                              ; preds = %149
  %202 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  store i32 24576, i32* %5, align 4
  br label %203

203:                                              ; preds = %244, %201
  %204 = load i32, i32* %5, align 4
  %205 = icmp sle i32 %204, 25599
  br i1 %205, label %206, label %247

206:                                              ; preds = %203
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %209 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %211, %213
  %215 = add nsw i64 %214, 4
  %216 = call i32 @readl(i64 %215)
  %217 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %218 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %220, %222
  %224 = call i32 @readl(i64 %223)
  %225 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %226 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %228, %230
  %232 = add nsw i64 %231, 12
  %233 = call i32 @readl(i64 %232)
  %234 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %235 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %5, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %237, %239
  %241 = add nsw i64 %240, 8
  %242 = call i32 @readl(i64 %241)
  %243 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %207, i32 %216, i32 %224, i32 %233, i32 %242)
  br label %244

244:                                              ; preds = %206
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, 16
  store i32 %246, i32* %5, align 4
  br label %203

247:                                              ; preds = %203
  %248 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  store i32 28672, i32* %5, align 4
  br label %249

249:                                              ; preds = %290, %247
  %250 = load i32, i32* %5, align 4
  %251 = icmp sle i32 %250, 29695
  br i1 %251, label %252, label %293

252:                                              ; preds = %249
  %253 = load i32, i32* %5, align 4
  %254 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %255 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %257, %259
  %261 = add nsw i64 %260, 4
  %262 = call i32 @readl(i64 %261)
  %263 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %264 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %5, align 4
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %266, %268
  %270 = call i32 @readl(i64 %269)
  %271 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %272 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %274, %276
  %278 = add nsw i64 %277, 12
  %279 = call i32 @readl(i64 %278)
  %280 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %281 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %283, %285
  %287 = add nsw i64 %286, 8
  %288 = call i32 @readl(i64 %287)
  %289 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %253, i32 %262, i32 %270, i32 %279, i32 %288)
  br label %290

290:                                              ; preds = %252
  %291 = load i32, i32* %5, align 4
  %292 = add nsw i32 %291, 16
  store i32 %292, i32* %5, align 4
  br label %249

293:                                              ; preds = %249
  br label %294

294:                                              ; preds = %293, %136
  br label %295

295:                                              ; preds = %294, %23
  ret void
}

declare dso_local i32 @netif_msg_hw(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_regdump(%struct.e1000_adapter*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @netif_msg_tx_done(%struct.e1000_adapter*) #1

declare dso_local %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @netif_msg_rx_status(%struct.e1000_adapter*) #1

declare dso_local %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
