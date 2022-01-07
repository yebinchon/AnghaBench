; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_device_attrs_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_device_attrs_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.ddb = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i64, i64 }

@ddb_attrs_fanspeed = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_temp = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_fan = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_led = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_snr = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_ctemp = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb*)* @ddb_device_attrs_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_device_attrs_del(%struct.ddb* %0) #0 {
  %2 = alloca %struct.ddb*, align 8
  %3 = alloca i32, align 4
  store %struct.ddb* %0, %struct.ddb** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %42

7:                                                ; preds = %4
  %8 = load %struct.ddb*, %struct.ddb** %2, align 8
  %9 = getelementptr inbounds %struct.ddb, %struct.ddb* %8, i32 0, i32 2
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %7
  %18 = load %struct.ddb*, %struct.ddb** %2, align 8
  %19 = getelementptr inbounds %struct.ddb, %struct.ddb* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load %struct.ddb*, %struct.ddb** %2, align 8
  %31 = getelementptr inbounds %struct.ddb, %struct.ddb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_fanspeed, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i64 %35
  %37 = call i32 @device_remove_file(i32 %32, %struct.TYPE_15__* %36)
  br label %38

38:                                               ; preds = %29, %17, %7
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4

42:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.ddb*, %struct.ddb** %2, align 8
  %46 = getelementptr inbounds %struct.ddb, %struct.ddb* %45, i32 0, i32 2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %44, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %43
  %55 = load %struct.ddb*, %struct.ddb** %2, align 8
  %56 = getelementptr inbounds %struct.ddb, %struct.ddb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_temp, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i64 %60
  %62 = call i32 @device_remove_file(i32 %57, %struct.TYPE_15__* %61)
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %43

66:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.ddb*, %struct.ddb** %2, align 8
  %70 = getelementptr inbounds %struct.ddb, %struct.ddb* %69, i32 0, i32 2
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %68, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %67
  %79 = load %struct.ddb*, %struct.ddb** %2, align 8
  %80 = getelementptr inbounds %struct.ddb, %struct.ddb* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_fan, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i64 %84
  %86 = call i32 @device_remove_file(i32 %81, %struct.TYPE_15__* %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %67

90:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %138, %90
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.ddb*, %struct.ddb** %2, align 8
  %94 = getelementptr inbounds %struct.ddb, %struct.ddb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %3, align 4
  %99 = icmp slt i32 %98, 4
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi i1 [ false, %91 ], [ %99, %97 ]
  br i1 %101, label %102, label %141

102:                                              ; preds = %100
  %103 = load %struct.ddb*, %struct.ddb** %2, align 8
  %104 = getelementptr inbounds %struct.ddb, %struct.ddb* %103, i32 0, i32 2
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %102
  %113 = load %struct.ddb*, %struct.ddb** %2, align 8
  %114 = getelementptr inbounds %struct.ddb, %struct.ddb* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_led, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 %118
  %120 = call i32 @device_remove_file(i32 %115, %struct.TYPE_15__* %119)
  br label %121

121:                                              ; preds = %112, %102
  %122 = load %struct.ddb*, %struct.ddb** %2, align 8
  %123 = getelementptr inbounds %struct.ddb, %struct.ddb* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_snr, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i64 %127
  %129 = call i32 @device_remove_file(i32 %124, %struct.TYPE_15__* %128)
  %130 = load %struct.ddb*, %struct.ddb** %2, align 8
  %131 = getelementptr inbounds %struct.ddb, %struct.ddb* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_ctemp, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 %135
  %137 = call i32 @device_remove_file(i32 %132, %struct.TYPE_15__* %136)
  br label %138

138:                                              ; preds = %121
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %3, align 4
  br label %91

141:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %160, %141
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %142
  %152 = load %struct.ddb*, %struct.ddb** %2, align 8
  %153 = getelementptr inbounds %struct.ddb, %struct.ddb* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i64 %157
  %159 = call i32 @device_remove_file(i32 %154, %struct.TYPE_15__* %158)
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %3, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %3, align 4
  br label %142

163:                                              ; preds = %142
  ret void
}

declare dso_local i32 @device_remove_file(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
