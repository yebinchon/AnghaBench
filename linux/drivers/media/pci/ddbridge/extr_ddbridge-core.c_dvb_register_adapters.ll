; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dvb_register_adapters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dvb_register_adapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.dvb_adapter* }
%struct.dvb_adapter = type { i32 }
%struct.TYPE_3__ = type { i32 }

@adapter_alloc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"DDBridge\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb*)* @dvb_register_adapters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_register_adapters(%struct.ddb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddb_port*, align 8
  %7 = alloca %struct.dvb_adapter*, align 8
  store %struct.ddb* %0, %struct.ddb** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @adapter_alloc, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %69

10:                                               ; preds = %1
  %11 = load %struct.ddb*, %struct.ddb** %3, align 8
  %12 = getelementptr inbounds %struct.ddb, %struct.ddb* %11, i32 0, i32 1
  %13 = load %struct.ddb_port*, %struct.ddb_port** %12, align 8
  %14 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %13, i64 0
  store %struct.ddb_port* %14, %struct.ddb_port** %6, align 8
  %15 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %16 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.dvb_adapter*, %struct.dvb_adapter** %19, align 8
  store %struct.dvb_adapter* %20, %struct.dvb_adapter** %7, align 8
  %21 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %22 = load i32, i32* @THIS_MODULE, align 4
  %23 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %24 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @adapter_nr, align 4
  %29 = call i32 @dvb_register_adapter(%struct.dvb_adapter* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %10
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %214

34:                                               ; preds = %10
  %35 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %36 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %65, %34
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ddb*, %struct.ddb** %3, align 8
  %43 = getelementptr inbounds %struct.ddb, %struct.ddb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load %struct.ddb*, %struct.ddb** %3, align 8
  %48 = getelementptr inbounds %struct.ddb, %struct.ddb* %47, i32 0, i32 1
  %49 = load %struct.ddb_port*, %struct.ddb_port** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %49, i64 %51
  store %struct.ddb_port* %52, %struct.ddb_port** %6, align 8
  %53 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %54 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %55 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store %struct.dvb_adapter* %53, %struct.dvb_adapter** %58, align 8
  %59 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %60 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %61 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store %struct.dvb_adapter* %59, %struct.dvb_adapter** %64, align 8
  br label %65

65:                                               ; preds = %46
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %40

68:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %214

69:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %209, %69
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.ddb*, %struct.ddb** %3, align 8
  %73 = getelementptr inbounds %struct.ddb, %struct.ddb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %212

76:                                               ; preds = %70
  %77 = load %struct.ddb*, %struct.ddb** %3, align 8
  %78 = getelementptr inbounds %struct.ddb, %struct.ddb* %77, i32 0, i32 1
  %79 = load %struct.ddb_port*, %struct.ddb_port** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %79, i64 %81
  store %struct.ddb_port* %82, %struct.ddb_port** %6, align 8
  %83 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %84 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %178 [
    i32 128, label %86
    i32 130, label %152
    i32 129, label %152
  ]

86:                                               ; preds = %76
  %87 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %88 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.dvb_adapter*, %struct.dvb_adapter** %91, align 8
  store %struct.dvb_adapter* %92, %struct.dvb_adapter** %7, align 8
  %93 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %94 = load i32, i32* @THIS_MODULE, align 4
  %95 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %96 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @adapter_nr, align 4
  %101 = call i32 @dvb_register_adapter(%struct.dvb_adapter* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %86
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %214

106:                                              ; preds = %86
  %107 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %108 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load i32, i32* @adapter_alloc, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %106
  %115 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %116 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load %struct.dvb_adapter*, %struct.dvb_adapter** %119, align 8
  %121 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %122 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store %struct.dvb_adapter* %120, %struct.dvb_adapter** %125, align 8
  br label %208

126:                                              ; preds = %106
  %127 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %128 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load %struct.dvb_adapter*, %struct.dvb_adapter** %131, align 8
  store %struct.dvb_adapter* %132, %struct.dvb_adapter** %7, align 8
  %133 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %134 = load i32, i32* @THIS_MODULE, align 4
  %135 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %136 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %135, i32 0, i32 2
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @adapter_nr, align 4
  %141 = call i32 @dvb_register_adapter(%struct.dvb_adapter* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %139, i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %126
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %214

146:                                              ; preds = %126
  %147 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %148 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  br label %208

152:                                              ; preds = %76, %76
  %153 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %154 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load %struct.dvb_adapter*, %struct.dvb_adapter** %157, align 8
  store %struct.dvb_adapter* %158, %struct.dvb_adapter** %7, align 8
  %159 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %160 = load i32, i32* @THIS_MODULE, align 4
  %161 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %162 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %161, i32 0, i32 2
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @adapter_nr, align 4
  %167 = call i32 @dvb_register_adapter(%struct.dvb_adapter* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %160, i32 %165, i32 %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %152
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %2, align 4
  br label %214

172:                                              ; preds = %152
  %173 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %174 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  br label %208

178:                                              ; preds = %76
  %179 = load i32, i32* @adapter_alloc, align 4
  %180 = icmp slt i32 %179, 2
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %208

182:                                              ; preds = %178
  %183 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %184 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load %struct.dvb_adapter*, %struct.dvb_adapter** %187, align 8
  store %struct.dvb_adapter* %188, %struct.dvb_adapter** %7, align 8
  %189 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %190 = load i32, i32* @THIS_MODULE, align 4
  %191 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %192 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %191, i32 0, i32 2
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @adapter_nr, align 4
  %197 = call i32 @dvb_register_adapter(%struct.dvb_adapter* %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %190, i32 %195, i32 %196)
  store i32 %197, i32* %5, align 4
  %198 = load i32, i32* %5, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %182
  %201 = load i32, i32* %5, align 4
  store i32 %201, i32* %2, align 4
  br label %214

202:                                              ; preds = %182
  %203 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %204 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %203, i32 0, i32 1
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  br label %208

208:                                              ; preds = %202, %181, %172, %146, %114
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %4, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %4, align 4
  br label %70

212:                                              ; preds = %70
  %213 = load i32, i32* %5, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %212, %200, %170, %144, %104, %68, %32
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @dvb_register_adapter(%struct.dvb_adapter*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
