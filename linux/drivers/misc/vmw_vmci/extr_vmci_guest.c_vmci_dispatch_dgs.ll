; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_guest.c_vmci_dispatch_dgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_guest.c_vmci_dispatch_dgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_guest_device = type { i32*, i64, i32 }
%struct.vmci_datagram = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@VMCI_MAX_DG_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VMCI_DATA_IN_ADDR = common dso_local global i64 0, align 8
@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i64 0, align 8
@VMCI_EVENT_HANDLER = common dso_local global i64 0, align 8
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Datagram with resource (ID=0x%x) failed (err=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to receive datagram (size=%u bytes)\0A\00", align 1
@VMCI_DG_HEADERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vmci_dispatch_dgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_dispatch_dgs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vmci_guest_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vmci_datagram*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.vmci_guest_device*
  store %struct.vmci_guest_device* %13, %struct.vmci_guest_device** %3, align 8
  %14 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %15 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  %17 = load i64, i64* @VMCI_MAX_DG_SIZE, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @VMCI_MAX_DG_SIZE, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = icmp ult i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %25 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VMCI_DATA_IN_ADDR, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %30 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @ioread8_rep(i64 %28, i32* %31, i64 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = bitcast i32* %34 to %struct.vmci_datagram*
  store %struct.vmci_datagram* %35, %struct.vmci_datagram** %5, align 8
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %231, %57, %1
  %38 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %39 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VMCI_INVALID_ID, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = icmp ugt i64 %45, %46
  br label %48

48:                                               ; preds = %44, %37
  %49 = phi i1 [ true, %37 ], [ %47, %44 ]
  br i1 %49, label %50, label %232

50:                                               ; preds = %48
  %51 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %52 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VMCI_INVALID_ID, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %59 = ptrtoint %struct.vmci_datagram* %58 to i64
  %60 = add i64 %59, 1
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = call i64 @roundup(i64 %60, i64 %61)
  %63 = inttoptr i64 %62 to %struct.vmci_datagram*
  store %struct.vmci_datagram* %63, %struct.vmci_datagram** %5, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %68 = bitcast %struct.vmci_datagram* %67 to i32*
  %69 = ptrtoint i32* %66 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  store i64 %72, i64* %8, align 8
  br label %37

73:                                               ; preds = %50
  %74 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %75 = call i32 @VMCI_DG_SIZE_ALIGNED(%struct.vmci_datagram* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* %6, align 8
  %79 = icmp ule i64 %77, %78
  br i1 %79, label %80, label %164

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %8, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %122

85:                                               ; preds = %80
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i64, i64* %8, align 8
  %95 = sub i64 0, %94
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @memmove(i32* %90, i32* %96, i64 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = bitcast i32* %99 to %struct.vmci_datagram*
  store %struct.vmci_datagram* %100, %struct.vmci_datagram** %5, align 8
  br label %101

101:                                              ; preds = %89, %85
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %105, %101
  %108 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %109 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @VMCI_DATA_IN_ADDR, align 8
  %112 = add nsw i64 %110, %111
  %113 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %114 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %8, align 8
  %120 = sub i64 %118, %119
  %121 = call i32 @ioread8_rep(i64 %112, i32* %117, i64 %120)
  br label %122

122:                                              ; preds = %107, %80
  %123 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %124 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @VMCI_HYPERVISOR_CONTEXT_ID, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %122
  %130 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %131 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @VMCI_EVENT_HANDLER, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %138 = call i32 @vmci_event_dispatch(%struct.vmci_datagram* %137)
  store i32 %138, i32* %10, align 4
  br label %142

139:                                              ; preds = %129, %122
  %140 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %141 = call i32 @vmci_datagram_invoke_guest_handler(%struct.vmci_datagram* %140)
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @VMCI_SUCCESS, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %148 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %151 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* %10, align 4
  %156 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %149, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %146, %142
  %158 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %159 = bitcast %struct.vmci_datagram* %158 to i32*
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = bitcast i32* %162 to %struct.vmci_datagram*
  store %struct.vmci_datagram* %163, %struct.vmci_datagram** %5, align 8
  br label %204

164:                                              ; preds = %73
  %165 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %166 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %167, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %9, align 4
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* %8, align 8
  %173 = sub i64 %171, %172
  store i64 %173, i64* %11, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* %6, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %164
  %178 = load i64, i64* %6, align 8
  store i64 %178, i64* %7, align 8
  br label %179

179:                                              ; preds = %177, %164
  br label %180

180:                                              ; preds = %195, %179
  %181 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %182 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @VMCI_DATA_IN_ADDR, align 8
  %185 = add nsw i64 %183, %184
  %186 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %187 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %7, align 8
  %190 = call i32 @ioread8_rep(i64 %185, i32* %188, i64 %189)
  %191 = load i64, i64* %11, align 8
  %192 = load i64, i64* %7, align 8
  %193 = icmp ule i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %180
  br label %199

195:                                              ; preds = %180
  %196 = load i64, i64* %7, align 8
  %197 = load i64, i64* %11, align 8
  %198 = sub i64 %197, %196
  store i64 %198, i64* %11, align 8
  br label %180

199:                                              ; preds = %194
  %200 = load i32*, i32** %4, align 8
  %201 = load i64, i64* %11, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = bitcast i32* %202 to %struct.vmci_datagram*
  store %struct.vmci_datagram* %203, %struct.vmci_datagram** %5, align 8
  br label %204

204:                                              ; preds = %199, %157
  %205 = load i32*, i32** %4, align 8
  %206 = load i64, i64* %7, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %209 = bitcast %struct.vmci_datagram* %208 to i32*
  %210 = ptrtoint i32* %207 to i64
  %211 = ptrtoint i32* %209 to i64
  %212 = sub i64 %210, %211
  %213 = sdiv exact i64 %212, 4
  store i64 %213, i64* %8, align 8
  %214 = load i64, i64* %8, align 8
  %215 = load i64, i64* @VMCI_DG_HEADERSIZE, align 8
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %204
  %218 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %219 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @VMCI_DATA_IN_ADDR, align 8
  %222 = add nsw i64 %220, %221
  %223 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %224 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %7, align 8
  %227 = call i32 @ioread8_rep(i64 %222, i32* %225, i64 %226)
  %228 = load i32*, i32** %4, align 8
  %229 = bitcast i32* %228 to %struct.vmci_datagram*
  store %struct.vmci_datagram* %229, %struct.vmci_datagram** %5, align 8
  %230 = load i64, i64* %7, align 8
  store i64 %230, i64* %8, align 8
  br label %231

231:                                              ; preds = %217, %204
  br label %37

232:                                              ; preds = %48
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ioread8_rep(i64, i32*, i64) #1

declare dso_local i64 @roundup(i64, i64) #1

declare dso_local i32 @VMCI_DG_SIZE_ALIGNED(%struct.vmci_datagram*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @vmci_event_dispatch(%struct.vmci_datagram*) #1

declare dso_local i32 @vmci_datagram_invoke_guest_handler(%struct.vmci_datagram*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
