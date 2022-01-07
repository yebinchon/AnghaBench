; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_ca_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_ca_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i64 }
%struct.avc_command_frame = type { i32, i64*, i32, i32 }
%struct.avc_response_frame = type { i8* }

@AVC_CTYPE_STATUS = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@AVC_OPCODE_VENDOR = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i64 0, align 8
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i64 0, align 8
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i64 0, align 8
@SFE_VENDOR_OPCODE_CA2HOST = common dso_local global i64 0, align 8
@SFE_VENDOR_TAG_CA_APPLICATION_INFO = common dso_local global i64 0, align 8
@LAST_OPERAND = common dso_local global i32 0, align 4
@EN50221_TAG_CA_INFO = common dso_local global i32 0, align 4
@num_fake_ca_system_ids = common dso_local global i32 0, align 4
@fake_ca_system_ids = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_ca_info(%struct.firedtv* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.avc_command_frame*, align 8
  %8 = alloca %struct.avc_response_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %13 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %16, %struct.avc_command_frame** %7, align 8
  %17 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %18 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.avc_response_frame*
  store %struct.avc_response_frame* %21, %struct.avc_response_frame** %8, align 8
  %22 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %23 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* @AVC_CTYPE_STATUS, align 4
  %26 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %27 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %29 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %30 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %28, %31
  %33 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %34 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @AVC_OPCODE_VENDOR, align 4
  %36 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %37 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_0, align 8
  %39 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %40 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %38, i64* %42, align 8
  %43 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_1, align 8
  %44 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %45 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  store i64 %43, i64* %47, align 8
  %48 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_2, align 8
  %49 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %50 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  store i64 %48, i64* %52, align 8
  %53 = load i64, i64* @SFE_VENDOR_OPCODE_CA2HOST, align 8
  %54 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %55 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  store i64 %53, i64* %57, align 8
  %58 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %59 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 4
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* @SFE_VENDOR_TAG_CA_APPLICATION_INFO, align 8
  %63 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %64 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 5
  store i64 %62, i64* %66, align 8
  %67 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %68 = load i32, i32* @LAST_OPERAND, align 4
  %69 = call i32 @clear_operands(%struct.avc_command_frame* %67, i32 6, i32 %68)
  %70 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %71 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %70, i32 0, i32 1
  store i32 12, i32* %71, align 4
  %72 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %73 = call i32 @avc_write(%struct.firedtv* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %3
  br label %172

77:                                               ; preds = %3
  %78 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %79 = call i32 @get_ca_object_pos(%struct.avc_response_frame* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @EN50221_TAG_CA_INFO, align 4
  %81 = ashr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* @EN50221_TAG_CA_INFO, align 4
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 255
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 %89, i8* %91, align 1
  %92 = load i32, i32* @EN50221_TAG_CA_INFO, align 4
  %93 = ashr i32 %92, 0
  %94 = and i32 %93, 255
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  store i8 %95, i8* %97, align 1
  %98 = load i32, i32* @num_fake_ca_system_ids, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %77
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  store i8 2, i8* %102, align 1
  %103 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %104 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 0
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  store i8 %110, i8* %112, align 1
  %113 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %114 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 5
  store i8 %120, i8* %122, align 1
  br label %165

123:                                              ; preds = %77
  %124 = load i32, i32* @num_fake_ca_system_ids, align 4
  %125 = mul nsw i32 %124, 2
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 3
  store i8 %126, i8* %128, align 1
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %161, %123
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @num_fake_ca_system_ids, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %164

133:                                              ; preds = %129
  %134 = load i32*, i32** @fake_ca_system_ids, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %138, 8
  %140 = and i32 %139, 255
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %5, align 8
  %143 = load i32, i32* %9, align 4
  %144 = mul nsw i32 %143, 2
  %145 = add nsw i32 4, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  store i8 %141, i8* %147, align 1
  %148 = load i32*, i32** @fake_ca_system_ids, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 255
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* %9, align 4
  %157 = mul nsw i32 %156, 2
  %158 = add nsw i32 5, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %155, i64 %159
  store i8 %154, i8* %160, align 1
  br label %161

161:                                              ; preds = %133
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %129

164:                                              ; preds = %129
  br label %165

165:                                              ; preds = %164, %100
  %166 = load i8*, i8** %5, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 3
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = add nsw i32 %169, 4
  %171 = load i32*, i32** %6, align 8
  store i32 %170, i32* %171, align 4
  br label %172

172:                                              ; preds = %165, %76
  %173 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %174 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %173, i32 0, i32 2
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load i32, i32* %11, align 4
  ret i32 %176
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_operands(%struct.avc_command_frame*, i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @get_ca_object_pos(%struct.avc_response_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
