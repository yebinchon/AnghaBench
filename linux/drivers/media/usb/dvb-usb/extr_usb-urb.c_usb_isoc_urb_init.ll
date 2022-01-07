; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_isoc_urb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_isoc_urb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_stream = type { i32, %struct.TYPE_8__, i32*, i32*, i32, i32, %struct.urb** }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.urb = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, %struct.usb_data_stream*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"not enough memory for urb_alloc_urb!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@usb_urb_complete = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_data_stream*)* @usb_isoc_urb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_isoc_urb_init(%struct.usb_data_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_data_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_data_stream* %0, %struct.usb_data_stream** %3, align 8
  %8 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %9 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %10 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %14 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %20 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %18, %24
  %26 = call i32 @usb_allocate_stream_buffers(%struct.usb_data_stream* %8, i32 %12, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %206

30:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %202, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %34 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %205

38:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  %39 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %40 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.urb* @usb_alloc_urb(i32 %44, i32 %45)
  %47 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %48 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %47, i32 0, i32 6
  %49 = load %struct.urb**, %struct.urb*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.urb*, %struct.urb** %49, i64 %51
  store %struct.urb* %46, %struct.urb** %52, align 8
  %53 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %54 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %53, i32 0, i32 6
  %55 = load %struct.urb**, %struct.urb*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.urb*, %struct.urb** %55, i64 %57
  %59 = load %struct.urb*, %struct.urb** %58, align 8
  %60 = icmp ne %struct.urb* %59, null
  br i1 %60, label %82, label %61

61:                                               ; preds = %38
  %62 = call i32 @deb_mem(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %76, %61
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %69 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %68, i32 0, i32 6
  %70 = load %struct.urb**, %struct.urb*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.urb*, %struct.urb** %70, i64 %72
  %74 = load %struct.urb*, %struct.urb** %73, align 8
  %75 = call i32 @usb_free_urb(%struct.urb* %74)
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %206

82:                                               ; preds = %38
  %83 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %84 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %83, i32 0, i32 6
  %85 = load %struct.urb**, %struct.urb*** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.urb*, %struct.urb** %85, i64 %87
  %89 = load %struct.urb*, %struct.urb** %88, align 8
  store %struct.urb* %89, %struct.urb** %6, align 8
  %90 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %91 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.urb*, %struct.urb** %6, align 8
  %94 = getelementptr inbounds %struct.urb, %struct.urb* %93, i32 0, i32 10
  store i32 %92, i32* %94, align 8
  %95 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %96 = load %struct.urb*, %struct.urb** %6, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 9
  store %struct.usb_data_stream* %95, %struct.usb_data_stream** %97, align 8
  %98 = load i32, i32* @usb_urb_complete, align 4
  %99 = load %struct.urb*, %struct.urb** %6, align 8
  %100 = getelementptr inbounds %struct.urb, %struct.urb* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 4
  %101 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %102 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %105 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @usb_rcvisocpipe(i32 %103, i32 %107)
  %109 = load %struct.urb*, %struct.urb** %6, align 8
  %110 = getelementptr inbounds %struct.urb, %struct.urb* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @URB_ISO_ASAP, align 4
  %112 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.urb*, %struct.urb** %6, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %117 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.urb*, %struct.urb** %6, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 4
  %124 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %125 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.urb*, %struct.urb** %6, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %133 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.urb*, %struct.urb** %6, align 8
  %136 = getelementptr inbounds %struct.urb, %struct.urb* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  %137 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %138 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.urb*, %struct.urb** %6, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %147 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.urb*, %struct.urb** %6, align 8
  %154 = getelementptr inbounds %struct.urb, %struct.urb* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %194, %82
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %158 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %156, %162
  br i1 %163, label %164, label %197

164:                                              ; preds = %155
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.urb*, %struct.urb** %6, align 8
  %167 = getelementptr inbounds %struct.urb, %struct.urb* %166, i32 0, i32 2
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i32 %165, i32* %172, align 4
  %173 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %174 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.urb*, %struct.urb** %6, align 8
  %180 = getelementptr inbounds %struct.urb, %struct.urb* %179, i32 0, i32 2
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  store i32 %178, i32* %185, align 4
  %186 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %187 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %164
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %155

197:                                              ; preds = %155
  %198 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %199 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %31

205:                                              ; preds = %31
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %205, %79, %28
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @usb_allocate_stream_buffers(%struct.usb_data_stream*, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @deb_mem(i8*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
