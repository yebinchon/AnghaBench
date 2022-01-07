; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_get_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_get_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32, i32, i8*, i32, %struct.TYPE_2__*, i8*, i32, i8*, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@NGENE_IO_TSOUT = common dso_local global i32 0, align 4
@TSOUT_BUF_SIZE = common dso_local global i32 0, align 4
@NGENE_IO_TSIN = common dso_local global i32 0, align 4
@TSIN_BUF_SIZE = common dso_local global i32 0, align 4
@NGENE_IO_AIN = common dso_local global i32 0, align 4
@AIN_BUF_SIZE = common dso_local global i32 0, align 4
@NGENE_IO_HDTV = common dso_local global i32 0, align 4
@VIN_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene*)* @ngene_get_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngene_get_buffers(%struct.ngene* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene*, align 8
  store %struct.ngene* %0, %struct.ngene** %3, align 8
  %4 = load %struct.ngene*, %struct.ngene** %3, align 8
  %5 = call i64 @AllocCommonBuffers(%struct.ngene* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %154

10:                                               ; preds = %1
  %11 = load %struct.ngene*, %struct.ngene** %3, align 8
  %12 = getelementptr inbounds %struct.ngene, %struct.ngene* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NGENE_IO_TSOUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %10
  %22 = load i32, i32* @TSOUT_BUF_SIZE, align 4
  %23 = call i8* @vmalloc(i32 %22)
  %24 = load %struct.ngene*, %struct.ngene** %3, align 8
  %25 = getelementptr inbounds %struct.ngene, %struct.ngene* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ngene*, %struct.ngene** %3, align 8
  %27 = getelementptr inbounds %struct.ngene, %struct.ngene* %26, i32 0, i32 9
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %154

33:                                               ; preds = %21
  %34 = load %struct.ngene*, %struct.ngene** %3, align 8
  %35 = getelementptr inbounds %struct.ngene, %struct.ngene* %34, i32 0, i32 10
  %36 = load %struct.ngene*, %struct.ngene** %3, align 8
  %37 = getelementptr inbounds %struct.ngene, %struct.ngene* %36, i32 0, i32 9
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @TSOUT_BUF_SIZE, align 4
  %40 = call i32 @dvb_ringbuffer_init(i32* %35, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %10
  %42 = load %struct.ngene*, %struct.ngene** %3, align 8
  %43 = getelementptr inbounds %struct.ngene, %struct.ngene* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NGENE_IO_TSIN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %41
  %53 = load i32, i32* @TSIN_BUF_SIZE, align 4
  %54 = call i8* @vmalloc(i32 %53)
  %55 = load %struct.ngene*, %struct.ngene** %3, align 8
  %56 = getelementptr inbounds %struct.ngene, %struct.ngene* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ngene*, %struct.ngene** %3, align 8
  %58 = getelementptr inbounds %struct.ngene, %struct.ngene* %57, i32 0, i32 7
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %154

64:                                               ; preds = %52
  %65 = load %struct.ngene*, %struct.ngene** %3, align 8
  %66 = getelementptr inbounds %struct.ngene, %struct.ngene* %65, i32 0, i32 8
  %67 = load %struct.ngene*, %struct.ngene** %3, align 8
  %68 = getelementptr inbounds %struct.ngene, %struct.ngene* %67, i32 0, i32 7
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @TSIN_BUF_SIZE, align 4
  %71 = call i32 @dvb_ringbuffer_init(i32* %66, i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %41
  %73 = load %struct.ngene*, %struct.ngene** %3, align 8
  %74 = getelementptr inbounds %struct.ngene, %struct.ngene* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NGENE_IO_AIN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %72
  %84 = load i32, i32* @AIN_BUF_SIZE, align 4
  %85 = call i8* @vmalloc(i32 %84)
  %86 = load %struct.ngene*, %struct.ngene** %3, align 8
  %87 = getelementptr inbounds %struct.ngene, %struct.ngene* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ngene*, %struct.ngene** %3, align 8
  %89 = getelementptr inbounds %struct.ngene, %struct.ngene* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %83
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %154

95:                                               ; preds = %83
  %96 = load %struct.ngene*, %struct.ngene** %3, align 8
  %97 = getelementptr inbounds %struct.ngene, %struct.ngene* %96, i32 0, i32 6
  %98 = load %struct.ngene*, %struct.ngene** %3, align 8
  %99 = getelementptr inbounds %struct.ngene, %struct.ngene* %98, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @AIN_BUF_SIZE, align 4
  %102 = call i32 @dvb_ringbuffer_init(i32* %97, i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %72
  %104 = load %struct.ngene*, %struct.ngene** %3, align 8
  %105 = getelementptr inbounds %struct.ngene, %struct.ngene* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @NGENE_IO_HDTV, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %103
  %115 = load i32, i32* @VIN_BUF_SIZE, align 4
  %116 = call i8* @vmalloc(i32 %115)
  %117 = load %struct.ngene*, %struct.ngene** %3, align 8
  %118 = getelementptr inbounds %struct.ngene, %struct.ngene* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.ngene*, %struct.ngene** %3, align 8
  %120 = getelementptr inbounds %struct.ngene, %struct.ngene* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %154

126:                                              ; preds = %114
  %127 = load %struct.ngene*, %struct.ngene** %3, align 8
  %128 = getelementptr inbounds %struct.ngene, %struct.ngene* %127, i32 0, i32 3
  %129 = load %struct.ngene*, %struct.ngene** %3, align 8
  %130 = getelementptr inbounds %struct.ngene, %struct.ngene* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @VIN_BUF_SIZE, align 4
  %133 = call i32 @dvb_ringbuffer_init(i32* %128, i8* %131, i32 %132)
  br label %134

134:                                              ; preds = %126, %103
  %135 = load %struct.ngene*, %struct.ngene** %3, align 8
  %136 = getelementptr inbounds %struct.ngene, %struct.ngene* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @pci_resource_start(i32 %137, i32 0)
  %139 = load %struct.ngene*, %struct.ngene** %3, align 8
  %140 = getelementptr inbounds %struct.ngene, %struct.ngene* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @pci_resource_len(i32 %141, i32 0)
  %143 = call i32 @ioremap(i32 %138, i32 %142)
  %144 = load %struct.ngene*, %struct.ngene** %3, align 8
  %145 = getelementptr inbounds %struct.ngene, %struct.ngene* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ngene*, %struct.ngene** %3, align 8
  %147 = getelementptr inbounds %struct.ngene, %struct.ngene* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %134
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %154

153:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %150, %123, %92, %61, %30, %7
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i64 @AllocCommonBuffers(%struct.ngene*) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @dvb_ringbuffer_init(i32*, i8*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
