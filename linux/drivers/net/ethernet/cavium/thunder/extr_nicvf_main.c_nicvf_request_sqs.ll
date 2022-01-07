; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_request_sqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_request_sqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, i32, i32, i32, i32, %struct.TYPE_8__**, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%union.nic_mbx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@NIC_MBOX_MSG_ALLOC_SQS = common dso_local global i32 0, align 4
@MAX_RCV_QUEUES_PER_QS = common dso_local global i32 0, align 4
@MAX_SND_QUEUES_PER_QS = common dso_local global i32 0, align 4
@NIC_MBOX_MSG_SNICVF_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_request_sqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_request_sqs(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca %union.nic_mbx, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %8 = bitcast %union.nic_mbx* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %13 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %18 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %230

22:                                               ; preds = %16
  %23 = load i32, i32* @NIC_MBOX_MSG_ALLOC_SQS, align 4
  %24 = bitcast %union.nic_mbx* %3 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %27 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = bitcast %union.nic_mbx* %3 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %32 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = bitcast %union.nic_mbx* %3 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %37 = call i64 @nicvf_send_msg_to_pf(%struct.nicvf* %36, %union.nic_mbx* %3)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %41 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %230

42:                                               ; preds = %22
  %43 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %44 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %230

48:                                               ; preds = %42
  %49 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %50 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MAX_RCV_QUEUES_PER_QS, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %56 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX_RCV_QUEUES_PER_QS, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %62 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %65 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %60
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %210, %75
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %79 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %213

82:                                               ; preds = %76
  %83 = load i32, i32* @NIC_MBOX_MSG_SNICVF_PTR, align 4
  %84 = bitcast %union.nic_mbx* %3 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %87 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = bitcast %union.nic_mbx* %3 to %struct.TYPE_6__*
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %4, align 4
  %92 = bitcast %union.nic_mbx* %3 to %struct.TYPE_6__*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %95 = call i64 @nicvf_send_msg_to_pf(%struct.nicvf* %94, %union.nic_mbx* %3)
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %98 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %97, i32 0, i32 5
  %99 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %99, i64 %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i32 %96, i32* %104, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @MAX_RCV_QUEUES_PER_QS, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %82
  %109 = load i32, i32* @MAX_RCV_QUEUES_PER_QS, align 4
  %110 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %111 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %110, i32 0, i32 5
  %112 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %112, i64 %114
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %109, i32* %119, align 4
  %120 = load i32, i32* @MAX_RCV_QUEUES_PER_QS, align 4
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %135

123:                                              ; preds = %82
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %126 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %125, i32 0, i32 5
  %127 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %127, i64 %129
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i32 %124, i32* %134, align 4
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %123, %108
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %141 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %142 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %141, i32 0, i32 5
  %143 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %143, i64 %145
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 %140, i32* %150, align 4
  %151 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %7, align 4
  br label %166

154:                                              ; preds = %135
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %157 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %156, i32 0, i32 5
  %158 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %158, i64 %160
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store i32 %155, i32* %165, align 4
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %154, %139
  %167 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %168 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %167, i32 0, i32 5
  %169 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %169, i64 %171
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %179 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %178, i32 0, i32 5
  %180 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %180, i64 %182
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @max(i32 %177, i32 %188)
  %190 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %191 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %190, i32 0, i32 5
  %192 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %192, i64 %194
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  store i32 %189, i32* %199, align 4
  %200 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %201 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %200, i32 0, i32 5
  %202 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %201, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %202, i64 %204
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @nicvf_open(i32 %208)
  br label %210

210:                                              ; preds = %166
  %211 = load i32, i32* %4, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %4, align 4
  br label %76

213:                                              ; preds = %76
  %214 = load i32, i32* %5, align 4
  %215 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %216 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %214, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %213
  %220 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %221 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %224 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %227 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @nicvf_set_real_num_queues(i32 %222, i32 %225, i32 %228)
  br label %230

230:                                              ; preds = %21, %39, %47, %219, %213
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @nicvf_open(i32) #2

declare dso_local i32 @nicvf_set_real_num_queues(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
