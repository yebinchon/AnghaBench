; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_setup_iq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_setup_iq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_11__, i32, %struct.TYPE_12__**, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64 (%struct.octeon_device.0*)* }
%struct.octeon_device.0 = type opaque
%struct.TYPE_12__ = type { i32, i32, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%union.oct_txpciq = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"IQ is in use. Cannot create the IQ: %d again\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_setup_iq(%struct.octeon_device* %0, i32 %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.oct_txpciq, align 4
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %union.oct_txpciq, %union.oct_txpciq* %8, i32 0, i32 0
  store i32 %3, i32* %16, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = bitcast %union.oct_txpciq* %8 to %struct.TYPE_8__*
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %14, align 8
  %21 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = call i32 @dev_to_node(i32* %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %27, align 8
  %29 = load i64, i64* %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %28, i64 %29
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %6
  %34 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %35 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %34, i32 0, i32 3
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = bitcast %union.oct_txpciq* %8 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %43 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %42, i32 0, i32 2
  %44 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %44, i64 %45
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 %41, i32* %49, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %52 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %52, align 8
  %54 = load i64, i64* %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %53, i64 %54
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store i8* %50, i8** %57, align 8
  store i32 0, i32* %7, align 4
  br label %151

58:                                               ; preds = %6
  %59 = load i32, i32* %15, align 4
  %60 = call %struct.TYPE_12__* @vzalloc_node(i32 4, i32 %59)
  %61 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %62 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %62, align 8
  %64 = load i64, i64* %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %63, i64 %64
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %65, align 8
  %66 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %67 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %67, align 8
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %68, i64 %69
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = icmp ne %struct.TYPE_12__* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %58
  %74 = call %struct.TYPE_12__* @vzalloc(i32 4)
  %75 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %76 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %75, i32 0, i32 2
  %77 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %76, align 8
  %78 = load i64, i64* %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %77, i64 %78
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %79, align 8
  br label %80

80:                                               ; preds = %73, %58
  %81 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %82 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %81, i32 0, i32 2
  %83 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %82, align 8
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %83, i64 %84
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  br label %151

89:                                               ; preds = %80
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %92 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %91, i32 0, i32 2
  %93 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %92, align 8
  %94 = load i64, i64* %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %93, i64 %94
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %100 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %99, i32 0, i32 2
  %101 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %100, align 8
  %102 = load i64, i64* %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %101, i64 %102
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  store i8* %98, i8** %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %108 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %107, i32 0, i32 2
  %109 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %109, i64 %110
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  store i32 %106, i32* %113, align 4
  %114 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds %union.oct_txpciq, %union.oct_txpciq* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @octeon_init_instr_queue(%struct.octeon_device* %114, i32 %117, i64 %115)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %89
  %121 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %122 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %121, i32 0, i32 2
  %123 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %122, align 8
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %123, i64 %124
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = call i32 @vfree(%struct.TYPE_12__* %126)
  %128 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %129 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %128, i32 0, i32 2
  %130 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %129, align 8
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %130, i64 %131
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %132, align 8
  store i32 1, i32* %7, align 4
  br label %151

133:                                              ; preds = %89
  %134 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %135 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %139 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i64 (%struct.octeon_device.0*)*, i64 (%struct.octeon_device.0*)** %140, align 8
  %142 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %143 = bitcast %struct.octeon_device* %142 to %struct.octeon_device.0*
  %144 = call i64 %141(%struct.octeon_device.0* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %133
  %147 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %148 = load i64, i64* %14, align 8
  %149 = call i32 @octeon_delete_instr_queue(%struct.octeon_device* %147, i64 %148)
  store i32 1, i32* %7, align 4
  br label %151

150:                                              ; preds = %133
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %150, %146, %120, %88, %33
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local %struct.TYPE_12__* @vzalloc_node(i32, i32) #1

declare dso_local %struct.TYPE_12__* @vzalloc(i32) #1

declare dso_local i64 @octeon_init_instr_queue(%struct.octeon_device*, i32, i64) #1

declare dso_local i32 @vfree(%struct.TYPE_12__*) #1

declare dso_local i32 @octeon_delete_instr_queue(%struct.octeon_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
