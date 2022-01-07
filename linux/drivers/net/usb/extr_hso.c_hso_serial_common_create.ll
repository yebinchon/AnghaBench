; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_serial_common_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_serial_common_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { i32, i32, i32, i32, i8*, i8*, i64, i64, %struct.TYPE_7__*, i8**, %struct.TYPE_6__**, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@tty_drv = common dso_local global i32 0, align 4
@hso_serial_dev_groups = common dso_local global i32 0, align 4
@HSO_SERIAL_MAGIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_serial*, i32, i32, i32)* @hso_serial_common_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_serial_common_create(%struct.hso_serial* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hso_serial*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hso_serial* %0, %struct.hso_serial** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %13 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %12, i32 0, i32 14
  %14 = call i32 @tty_port_init(i32* %13)
  %15 = call i32 (...) @get_free_serial_index()
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %173

19:                                               ; preds = %4
  %20 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %21 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %20, i32 0, i32 14
  %22 = load i32, i32* @tty_drv, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %25 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %24, i32 0, i32 13
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %31 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %30, i32 0, i32 13
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* @hso_serial_dev_groups, align 4
  %34 = call i32 @tty_port_register_device_attr(i32* %21, i32 %22, i32 %23, i32* %29, %struct.TYPE_8__* %32, i32 %33)
  %35 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %36 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %35, i32 0, i32 13
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %41 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @HSO_SERIAL_MAGIC, align 4
  %43 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %44 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %46 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %45, i32 0, i32 11
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %50 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %53 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %117, %19
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %57 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %120

60:                                               ; preds = %54
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @usb_alloc_urb(i32 0, i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_6__*
  %64 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %65 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %64, i32 0, i32 10
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i64 %68
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %69, align 8
  %70 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %71 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %70, i32 0, i32 10
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = icmp ne %struct.TYPE_6__* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %60
  br label %173

79:                                               ; preds = %60
  %80 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %81 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %80, i32 0, i32 10
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %89 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %88, i32 0, i32 10
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %97 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @kzalloc(i32 %98, i32 %99)
  %101 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %102 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %101, i32 0, i32 9
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %100, i8** %106, align 8
  %107 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %108 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %107, i32 0, i32 9
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %79
  br label %173

116:                                              ; preds = %79
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %54

120:                                              ; preds = %54
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i8* @usb_alloc_urb(i32 0, i32 %121)
  %123 = bitcast i8* %122 to %struct.TYPE_7__*
  %124 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %125 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %124, i32 0, i32 8
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %125, align 8
  %126 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %127 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %126, i32 0, i32 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = icmp ne %struct.TYPE_7__* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %120
  br label %173

131:                                              ; preds = %120
  %132 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %133 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %132, i32 0, i32 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32* null, i32** %135, align 8
  %136 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %137 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %136, i32 0, i32 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %141 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %140, i32 0, i32 7
  store i64 0, i64* %141, align 8
  %142 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %143 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %142, i32 0, i32 6
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %146 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %148 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i8* @kzalloc(i32 %149, i32 %150)
  %152 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %153 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  %154 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %155 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %154, i32 0, i32 5
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %131
  br label %173

159:                                              ; preds = %131
  %160 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %161 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @GFP_KERNEL, align 4
  %164 = call i8* @kzalloc(i32 %162, i32 %163)
  %165 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %166 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %165, i32 0, i32 4
  store i8* %164, i8** %166, align 8
  %167 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %168 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %167, i32 0, i32 4
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %159
  br label %173

172:                                              ; preds = %159
  store i32 0, i32* %5, align 4
  br label %178

173:                                              ; preds = %171, %158, %130, %115, %78, %18
  %174 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %175 = call i32 @hso_serial_tty_unregister(%struct.hso_serial* %174)
  %176 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %177 = call i32 @hso_serial_common_free(%struct.hso_serial* %176)
  store i32 -1, i32* %5, align 4
  br label %178

178:                                              ; preds = %173, %172
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @tty_port_init(i32*) #1

declare dso_local i32 @get_free_serial_index(...) #1

declare dso_local i32 @tty_port_register_device_attr(i32*, i32, i32, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hso_serial_tty_unregister(%struct.hso_serial*) #1

declare dso_local i32 @hso_serial_common_free(%struct.hso_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
