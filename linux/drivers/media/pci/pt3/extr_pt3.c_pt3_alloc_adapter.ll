; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_alloc_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_alloc_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_board = type { %struct.pt3_adapter**, %struct.TYPE_8__* }
%struct.pt3_adapter = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.dvb_adapter }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__, i32, i32, %struct.pt3_adapter* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.dvb_adapter = type { %struct.pt3_board* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@one_adapter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PT3 DVB\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to register adapter dev\0A\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@pt3_start_feed = common dso_local global i32 0, align 4
@pt3_stop_feed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to init dmx dev\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to init dmxdev\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to alloc DMA buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt3_board*, i32)* @pt3_alloc_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt3_alloc_adapter(%struct.pt3_board* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt3_board*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt3_adapter*, align 8
  %8 = alloca %struct.dvb_adapter*, align 8
  store %struct.pt3_board* %0, %struct.pt3_board** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pt3_adapter* @kzalloc(i32 64, i32 %9)
  store %struct.pt3_adapter* %10, %struct.pt3_adapter** %7, align 8
  %11 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %12 = icmp ne %struct.pt3_adapter* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %165

16:                                               ; preds = %2
  %17 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %18 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %19 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %18, i32 0, i32 0
  %20 = load %struct.pt3_adapter**, %struct.pt3_adapter*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pt3_adapter*, %struct.pt3_adapter** %20, i64 %22
  store %struct.pt3_adapter* %17, %struct.pt3_adapter** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %26 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @one_adapter, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %29, %16
  %33 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %34 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %33, i32 0, i32 3
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %37 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* @adapter_nr, align 4
  %41 = call i32 @dvb_register_adapter(%struct.dvb_adapter* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %35, i32* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %46 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %155

50:                                               ; preds = %32
  %51 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %52 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %51, i32 0, i32 3
  store %struct.dvb_adapter* %52, %struct.dvb_adapter** %8, align 8
  br label %60

53:                                               ; preds = %29
  %54 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %55 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %54, i32 0, i32 0
  %56 = load %struct.pt3_adapter**, %struct.pt3_adapter*** %55, align 8
  %57 = getelementptr inbounds %struct.pt3_adapter*, %struct.pt3_adapter** %56, i64 0
  %58 = load %struct.pt3_adapter*, %struct.pt3_adapter** %57, align 8
  %59 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %58, i32 0, i32 3
  store %struct.dvb_adapter* %59, %struct.dvb_adapter** %8, align 8
  br label %60

60:                                               ; preds = %53, %50
  %61 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %62 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %63 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %63, i32 0, i32 0
  store %struct.pt3_board* %61, %struct.pt3_board** %64, align 8
  %65 = load i32, i32* @DMX_TS_FILTERING, align 4
  %66 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  %72 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %73 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %74 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 5
  store %struct.pt3_adapter* %72, %struct.pt3_adapter** %75, align 8
  %76 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %77 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 256, i32* %78, align 8
  %79 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i32 256, i32* %81, align 4
  %82 = load i32, i32* @pt3_start_feed, align 4
  %83 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %84 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @pt3_stop_feed, align 4
  %87 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %88 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %91 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %90, i32 0, i32 1
  %92 = call i32 @dvb_dmx_init(%struct.TYPE_10__* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %60
  %96 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %97 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %145

101:                                              ; preds = %60
  %102 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %103 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 256, i32* %104, align 8
  %105 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %106 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %109 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %110, align 8
  %111 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %112 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %111, i32 0, i32 2
  %113 = load %struct.dvb_adapter*, %struct.dvb_adapter** %8, align 8
  %114 = call i32 @dvb_dmxdev_init(%struct.TYPE_9__* %112, %struct.dvb_adapter* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %101
  %118 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %119 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = call i32 @dev_err(i32* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %141

123:                                              ; preds = %101
  %124 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %125 = call i32 @pt3_alloc_dmabuf(%struct.pt3_adapter* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %130 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %135

134:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %165

135:                                              ; preds = %128
  %136 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %137 = call i32 @pt3_free_dmabuf(%struct.pt3_adapter* %136)
  %138 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %139 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %138, i32 0, i32 2
  %140 = call i32 @dvb_dmxdev_release(%struct.TYPE_9__* %139)
  br label %141

141:                                              ; preds = %135, %117
  %142 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %143 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %142, i32 0, i32 1
  %144 = call i32 @dvb_dmx_release(%struct.TYPE_10__* %143)
  br label %145

145:                                              ; preds = %141, %95
  %146 = load i32, i32* %5, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* @one_adapter, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148, %145
  %152 = load %struct.dvb_adapter*, %struct.dvb_adapter** %8, align 8
  %153 = call i32 @dvb_unregister_adapter(%struct.dvb_adapter* %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %44
  %156 = load %struct.pt3_adapter*, %struct.pt3_adapter** %7, align 8
  %157 = call i32 @kfree(%struct.pt3_adapter* %156)
  %158 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %159 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %158, i32 0, i32 0
  %160 = load %struct.pt3_adapter**, %struct.pt3_adapter*** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.pt3_adapter*, %struct.pt3_adapter** %160, i64 %162
  store %struct.pt3_adapter* null, %struct.pt3_adapter** %163, align 8
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %155, %134, %13
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.pt3_adapter* @kzalloc(i32, i32) #1

declare dso_local i32 @dvb_register_adapter(%struct.dvb_adapter*, i8*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_10__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_9__*, %struct.dvb_adapter*) #1

declare dso_local i32 @pt3_alloc_dmabuf(%struct.pt3_adapter*) #1

declare dso_local i32 @pt3_free_dmabuf(%struct.pt3_adapter*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_9__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_10__*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.dvb_adapter*) #1

declare dso_local i32 @kfree(%struct.pt3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
