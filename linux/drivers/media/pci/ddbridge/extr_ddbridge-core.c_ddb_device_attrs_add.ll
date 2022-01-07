; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_device_attrs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_device_attrs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.ddb = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64, i64 }

@ddb_attrs = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_temp = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_fan = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_snr = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_ctemp = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_led = common dso_local global %struct.TYPE_15__* null, align 8
@ddb_attrs_fanspeed = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb*)* @ddb_device_attrs_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_device_attrs_add(%struct.ddb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb*, align 8
  %4 = alloca i32, align 4
  store %struct.ddb* %0, %struct.ddb** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load %struct.ddb*, %struct.ddb** %3, align 8
  %16 = getelementptr inbounds %struct.ddb, %struct.ddb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i64 %20
  %22 = call i64 @device_create_file(i32 %17, %struct.TYPE_15__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %186

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.ddb*, %struct.ddb** %3, align 8
  %33 = getelementptr inbounds %struct.ddb, %struct.ddb* %32, i32 0, i32 2
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %31, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = load %struct.ddb*, %struct.ddb** %3, align 8
  %43 = getelementptr inbounds %struct.ddb, %struct.ddb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_temp, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i64 %47
  %49 = call i64 @device_create_file(i32 %44, %struct.TYPE_15__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %186

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %30

56:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %80, %56
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.ddb*, %struct.ddb** %3, align 8
  %60 = getelementptr inbounds %struct.ddb, %struct.ddb* %59, i32 0, i32 2
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %58, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %57
  %69 = load %struct.ddb*, %struct.ddb** %3, align 8
  %70 = getelementptr inbounds %struct.ddb, %struct.ddb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_fan, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i64 %74
  %76 = call i64 @device_create_file(i32 %71, %struct.TYPE_15__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %186

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %57

83:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %140, %83
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.ddb*, %struct.ddb** %3, align 8
  %87 = getelementptr inbounds %struct.ddb, %struct.ddb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = phi i1 [ false, %84 ], [ %92, %90 ]
  br i1 %94, label %95, label %143

95:                                               ; preds = %93
  %96 = load %struct.ddb*, %struct.ddb** %3, align 8
  %97 = getelementptr inbounds %struct.ddb, %struct.ddb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_snr, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i64 %101
  %103 = call i64 @device_create_file(i32 %98, %struct.TYPE_15__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %186

106:                                              ; preds = %95
  %107 = load %struct.ddb*, %struct.ddb** %3, align 8
  %108 = getelementptr inbounds %struct.ddb, %struct.ddb* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_ctemp, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i64 %112
  %114 = call i64 @device_create_file(i32 %109, %struct.TYPE_15__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %186

117:                                              ; preds = %106
  %118 = load %struct.ddb*, %struct.ddb** %3, align 8
  %119 = getelementptr inbounds %struct.ddb, %struct.ddb* %118, i32 0, i32 2
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %117
  %128 = load %struct.ddb*, %struct.ddb** %3, align 8
  %129 = getelementptr inbounds %struct.ddb, %struct.ddb* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_led, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i64 %133
  %135 = call i64 @device_create_file(i32 %130, %struct.TYPE_15__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %186

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %117
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %84

143:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %182, %143
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %145, 4
  br i1 %146, label %147, label %185

147:                                              ; preds = %144
  %148 = load %struct.ddb*, %struct.ddb** %3, align 8
  %149 = getelementptr inbounds %struct.ddb, %struct.ddb* %148, i32 0, i32 2
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = icmp ne %struct.TYPE_13__* %155, null
  br i1 %156, label %157, label %181

157:                                              ; preds = %147
  %158 = load %struct.ddb*, %struct.ddb** %3, align 8
  %159 = getelementptr inbounds %struct.ddb, %struct.ddb* %158, i32 0, i32 2
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %157
  %170 = load %struct.ddb*, %struct.ddb** %3, align 8
  %171 = getelementptr inbounds %struct.ddb, %struct.ddb* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ddb_attrs_fanspeed, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i64 %175
  %177 = call i64 @device_create_file(i32 %172, %struct.TYPE_15__* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %186

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %157, %147
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %144

185:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %187

186:                                              ; preds = %179, %137, %116, %105, %78, %51, %24
  store i32 -1, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %185
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i64 @device_create_file(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
