; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_irq_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_irq_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, i32, %struct.mei_device* }
%struct.mei_device = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.mei_cl_cb = type { i64, i32, %struct.mei_msg_data }
%struct.mei_msg_data = type { i64, i8* }
%struct.mei_msg_hdr = type { i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No flow control credentials: not sending.\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@MEI_WRITING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_irq_write(%struct.mei_cl* %0, %struct.mei_cl_cb* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca %struct.mei_cl_cb*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.mei_device*, align 8
  %9 = alloca %struct.mei_msg_data*, align 8
  %10 = alloca %struct.mei_msg_hdr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %5, align 8
  store %struct.mei_cl_cb* %1, %struct.mei_cl_cb** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i64 16, i64* %11, align 8
  %21 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %22 = icmp ne %struct.mei_cl* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %25 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %24, i32 0, i32 2
  %26 = load %struct.mei_device*, %struct.mei_device** %25, align 8
  %27 = icmp ne %struct.mei_device* %26, null
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %3
  %30 = phi i1 [ true, %3 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %209

37:                                               ; preds = %29
  %38 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %39 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %38, i32 0, i32 2
  %40 = load %struct.mei_device*, %struct.mei_device** %39, align 8
  store %struct.mei_device* %40, %struct.mei_device** %8, align 8
  %41 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %42 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %41, i32 0, i32 2
  store %struct.mei_msg_data* %42, %struct.mei_msg_data** %9, align 8
  %43 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %44 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %52 = call i32 @mei_cl_tx_flow_ctrl_creds(%struct.mei_cl* %51)
  br label %54

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 1, %53 ]
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %200

59:                                               ; preds = %54
  %60 = load i32, i32* %18, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %64 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %65 = call i32 @cl_dbg(%struct.mei_device* %63, %struct.mei_cl* %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %209

66:                                               ; preds = %59
  %67 = load %struct.mei_msg_data*, %struct.mei_msg_data** %9, align 8
  %68 = getelementptr inbounds %struct.mei_msg_data, %struct.mei_msg_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %71 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  store i64 %73, i64* %12, align 8
  %74 = load %struct.mei_msg_data*, %struct.mei_msg_data** %9, align 8
  %75 = getelementptr inbounds %struct.mei_msg_data, %struct.mei_msg_data* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %78 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr i8, i8* %76, i64 %79
  store i8* %80, i8** %20, align 8
  %81 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %82 = call i32 @mei_hbuf_empty_slots(%struct.mei_device* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %66
  %86 = load i32, i32* @EOVERFLOW, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %18, align 4
  br label %200

88:                                               ; preds = %66
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = call i64 @mei_slots2data(i64 %90)
  store i64 %91, i64* %13, align 8
  %92 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %93 = call i64 @mei_dma_ring_empty_slots(%struct.mei_device* %92)
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %16, align 8
  %95 = call i64 @mei_slots2data(i64 %94)
  store i64 %95, i64* %14, align 8
  %96 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %97 = call i32 @mei_msg_hdr_init(%struct.mei_msg_hdr* %10, %struct.mei_cl_cb* %96)
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %98, %99
  %101 = load i64, i64* %13, align 8
  %102 = icmp ule i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %88
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %10, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %10, i32 0, i32 1
  store i32 1, i32* %106, align 8
  br label %143

107:                                              ; preds = %88
  %108 = load i64, i64* %16, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, 8
  %114 = icmp uge i64 %111, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %10, i32 0, i32 2
  store i32 1, i32* %116, align 4
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %14, align 8
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i64, i64* %14, align 8
  store i64 %121, i64* %12, align 8
  br label %124

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %10, i32 0, i32 1
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %10, i32 0, i32 0
  store i64 8, i64* %125, align 8
  %126 = load i64, i64* %12, align 8
  store i64 %126, i64* %17, align 8
  %127 = bitcast i64* %17 to i8*
  store i8* %127, i8** %20, align 8
  br label %142

128:                                              ; preds = %110, %107
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %132 = call i64 @mei_hbuf_depth(%struct.mei_device* %131)
  %133 = icmp eq i64 %130, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %11, align 8
  %137 = sub i64 %135, %136
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %10, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  br label %141

140:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %209

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %124
  br label %143

143:                                              ; preds = %142, %103
  %144 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %10, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %149 = load %struct.mei_msg_data*, %struct.mei_msg_data** %9, align 8
  %150 = getelementptr inbounds %struct.mei_msg_data, %struct.mei_msg_data* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %153 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr i8, i8* %151, i64 %154
  %156 = load i64, i64* %12, align 8
  %157 = call i32 @mei_dma_ring_write(%struct.mei_device* %148, i8* %155, i64 %156)
  br label %158

158:                                              ; preds = %147, %143
  %159 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %160 = load i64, i64* %11, align 8
  %161 = load i8*, i8** %20, align 8
  %162 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %10, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @mei_write_message(%struct.mei_device* %159, %struct.mei_msg_hdr* %10, i64 %160, i8* %161, i64 %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %200

168:                                              ; preds = %158
  %169 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %170 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %169, i32 0, i32 0
  store i32 0, i32* %170, align 8
  %171 = load i32, i32* @MEI_WRITING, align 4
  %172 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %173 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load i64, i64* %12, align 8
  %175 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %176 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load i32, i32* %19, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %168
  %182 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %183 = call i64 @mei_cl_tx_flow_ctrl_creds_reduce(%struct.mei_cl* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* @EIO, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %18, align 4
  br label %200

188:                                              ; preds = %181
  br label %189

189:                                              ; preds = %188, %168
  %190 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %10, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %195 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %194, i32 0, i32 1
  %196 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %197 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %196, i32 0, i32 0
  %198 = call i32 @list_move_tail(i32* %195, %struct.list_head* %197)
  br label %199

199:                                              ; preds = %193, %189
  store i32 0, i32* %4, align 4
  br label %209

200:                                              ; preds = %185, %167, %85, %58
  %201 = load i32, i32* %18, align 4
  %202 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %203 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %205 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %204, i32 0, i32 1
  %206 = load %struct.list_head*, %struct.list_head** %7, align 8
  %207 = call i32 @list_move_tail(i32* %205, %struct.list_head* %206)
  %208 = load i32, i32* %18, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %200, %199, %140, %62, %34
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mei_cl_tx_flow_ctrl_creds(%struct.mei_cl*) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @mei_hbuf_empty_slots(%struct.mei_device*) #1

declare dso_local i64 @mei_slots2data(i64) #1

declare dso_local i64 @mei_dma_ring_empty_slots(%struct.mei_device*) #1

declare dso_local i32 @mei_msg_hdr_init(%struct.mei_msg_hdr*, %struct.mei_cl_cb*) #1

declare dso_local i64 @mei_hbuf_depth(%struct.mei_device*) #1

declare dso_local i32 @mei_dma_ring_write(%struct.mei_device*, i8*, i64) #1

declare dso_local i32 @mei_write_message(%struct.mei_device*, %struct.mei_msg_hdr*, i64, i8*, i64) #1

declare dso_local i64 @mei_cl_tx_flow_ctrl_creds_reduce(%struct.mei_cl*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
