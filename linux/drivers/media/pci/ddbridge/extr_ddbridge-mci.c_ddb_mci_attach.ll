; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-mci.c_ddb_mci_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-mci.c_ddb_mci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mci_base*, i32 }
%struct.mci_base = type { i32, i32, i32, i32, %struct.dvb_frontend, i32, %struct.mci_base*, i32, i32, i32, i32, %struct.ddb_link*, i8* }
%struct.ddb_link = type { i32 }
%struct.ddb_input = type { %struct.ddb_port* }
%struct.ddb_port = type { i64, %struct.ddb* }
%struct.ddb = type { i32, %struct.ddb_link* }
%struct.mci_cfg = type { i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.mci_base.1*)*, i32, i32 (%struct.mci_base.2*)*, i32, i32, i64 }
%struct.dvb_frontend.0 = type opaque
%struct.mci_base.1 = type opaque
%struct.mci_base.2 = type opaque
%struct.mci = type { i32, i32, i32, i32, %struct.dvb_frontend, i32, %struct.mci*, i32, i32, i32, i32, %struct.ddb_link*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mci_handler = common dso_local global i32 0, align 4
@mci_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @ddb_mci_attach(%struct.ddb_input* %0, %struct.mci_cfg* %1, i32 %2, i32 (%struct.dvb_frontend*, i32)** %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.ddb_input*, align 8
  %7 = alloca %struct.mci_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.dvb_frontend*, i32)**, align 8
  %10 = alloca %struct.ddb_port*, align 8
  %11 = alloca %struct.ddb*, align 8
  %12 = alloca %struct.ddb_link*, align 8
  %13 = alloca %struct.mci_base*, align 8
  %14 = alloca %struct.mci*, align 8
  %15 = alloca i8*, align 8
  store %struct.ddb_input* %0, %struct.ddb_input** %6, align 8
  store %struct.mci_cfg* %1, %struct.mci_cfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (%struct.dvb_frontend*, i32)** %3, i32 (%struct.dvb_frontend*, i32)*** %9, align 8
  %16 = load %struct.ddb_input*, %struct.ddb_input** %6, align 8
  %17 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %16, i32 0, i32 0
  %18 = load %struct.ddb_port*, %struct.ddb_port** %17, align 8
  store %struct.ddb_port* %18, %struct.ddb_port** %10, align 8
  %19 = load %struct.ddb_port*, %struct.ddb_port** %10, align 8
  %20 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %19, i32 0, i32 1
  %21 = load %struct.ddb*, %struct.ddb** %20, align 8
  store %struct.ddb* %21, %struct.ddb** %11, align 8
  %22 = load %struct.ddb*, %struct.ddb** %11, align 8
  %23 = getelementptr inbounds %struct.ddb, %struct.ddb* %22, i32 0, i32 1
  %24 = load %struct.ddb_link*, %struct.ddb_link** %23, align 8
  %25 = load %struct.ddb_port*, %struct.ddb_port** %10, align 8
  %26 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %24, i64 %27
  store %struct.ddb_link* %28, %struct.ddb_link** %12, align 8
  %29 = load %struct.mci_cfg*, %struct.mci_cfg** %7, align 8
  %30 = getelementptr inbounds %struct.mci_cfg, %struct.mci_cfg* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load %struct.ddb_port*, %struct.ddb_port** %10, align 8
  %35 = bitcast %struct.ddb_port* %34 to i8*
  br label %39

36:                                               ; preds = %4
  %37 = load %struct.ddb_link*, %struct.ddb_link** %12, align 8
  %38 = bitcast %struct.ddb_link* %37 to i8*
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i8* [ %35, %33 ], [ %38, %36 ]
  store i8* %40, i8** %15, align 8
  %41 = load %struct.mci_cfg*, %struct.mci_cfg** %7, align 8
  %42 = getelementptr inbounds %struct.mci_cfg, %struct.mci_cfg* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.mci_base* @kzalloc(i32 %43, i32 %44)
  %46 = bitcast %struct.mci_base* %45 to %struct.mci*
  store %struct.mci* %46, %struct.mci** %14, align 8
  %47 = load %struct.mci*, %struct.mci** %14, align 8
  %48 = icmp ne %struct.mci* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %5, align 8
  br label %175

50:                                               ; preds = %39
  %51 = load i8*, i8** %15, align 8
  %52 = call %struct.mci_base* @match_base(i8* %51)
  store %struct.mci_base* %52, %struct.mci_base** %13, align 8
  %53 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %54 = icmp ne %struct.mci_base* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %57 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %61 = bitcast %struct.mci_base* %60 to %struct.mci*
  %62 = load %struct.mci*, %struct.mci** %14, align 8
  %63 = getelementptr inbounds %struct.mci, %struct.mci* %62, i32 0, i32 6
  store %struct.mci* %61, %struct.mci** %63, align 8
  br label %130

64:                                               ; preds = %50
  %65 = load %struct.mci_cfg*, %struct.mci_cfg** %7, align 8
  %66 = getelementptr inbounds %struct.mci_cfg, %struct.mci_cfg* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.mci_base* @kzalloc(i32 %67, i32 %68)
  store %struct.mci_base* %69, %struct.mci_base** %13, align 8
  %70 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %71 = icmp ne %struct.mci_base* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  br label %171

73:                                               ; preds = %64
  %74 = load i8*, i8** %15, align 8
  %75 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %76 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %75, i32 0, i32 12
  store i8* %74, i8** %76, align 8
  %77 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %78 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.ddb_link*, %struct.ddb_link** %12, align 8
  %80 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %81 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %80, i32 0, i32 11
  store %struct.ddb_link* %79, %struct.ddb_link** %81, align 8
  %82 = load %struct.ddb*, %struct.ddb** %11, align 8
  %83 = getelementptr inbounds %struct.ddb, %struct.ddb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %86 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %88 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %87, i32 0, i32 9
  %89 = call i32 @mutex_init(i32* %88)
  %90 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %91 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %90, i32 0, i32 8
  %92 = call i32 @mutex_init(i32* %91)
  %93 = load %struct.ddb*, %struct.ddb** %11, align 8
  %94 = load %struct.ddb_link*, %struct.ddb_link** %12, align 8
  %95 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @mci_handler, align 4
  %98 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %99 = call i32 @ddb_irq_set(%struct.ddb* %93, i32 %96, i32 0, i32 %97, %struct.mci_base* %98)
  %100 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %101 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %100, i32 0, i32 7
  %102 = call i32 @init_completion(i32* %101)
  %103 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %104 = bitcast %struct.mci_base* %103 to %struct.mci*
  %105 = load %struct.mci*, %struct.mci** %14, align 8
  %106 = getelementptr inbounds %struct.mci, %struct.mci* %105, i32 0, i32 6
  store %struct.mci* %104, %struct.mci** %106, align 8
  %107 = load %struct.mci*, %struct.mci** %14, align 8
  %108 = bitcast %struct.mci* %107 to %struct.mci_base*
  %109 = call i64 @probe(%struct.mci_base* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %73
  %112 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %113 = call i32 @kfree(%struct.mci_base* %112)
  br label %171

114:                                              ; preds = %73
  %115 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %116 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %115, i32 0, i32 5
  %117 = call i32 @list_add(i32* %116, i32* @mci_list)
  %118 = load %struct.mci_cfg*, %struct.mci_cfg** %7, align 8
  %119 = getelementptr inbounds %struct.mci_cfg, %struct.mci_cfg* %118, i32 0, i32 3
  %120 = load i32 (%struct.mci_base.2*)*, i32 (%struct.mci_base.2*)** %119, align 8
  %121 = icmp ne i32 (%struct.mci_base.2*)* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %114
  %123 = load %struct.mci_cfg*, %struct.mci_cfg** %7, align 8
  %124 = getelementptr inbounds %struct.mci_cfg, %struct.mci_cfg* %123, i32 0, i32 3
  %125 = load i32 (%struct.mci_base.2*)*, i32 (%struct.mci_base.2*)** %124, align 8
  %126 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  %127 = bitcast %struct.mci_base* %126 to %struct.mci_base.2*
  %128 = call i32 %125(%struct.mci_base.2* %127)
  br label %129

129:                                              ; preds = %122, %114
  br label %130

130:                                              ; preds = %129, %55
  %131 = load %struct.mci*, %struct.mci** %14, align 8
  %132 = getelementptr inbounds %struct.mci, %struct.mci* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %132, i32 0, i32 1
  %134 = load %struct.mci_cfg*, %struct.mci_cfg** %7, align 8
  %135 = getelementptr inbounds %struct.mci_cfg, %struct.mci_cfg* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @memcpy(i32* %133, i32 %136, i32 4)
  %138 = load %struct.mci*, %struct.mci** %14, align 8
  %139 = bitcast %struct.mci* %138 to %struct.mci_base*
  %140 = load %struct.mci*, %struct.mci** %14, align 8
  %141 = getelementptr inbounds %struct.mci, %struct.mci* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %141, i32 0, i32 0
  store %struct.mci_base* %139, %struct.mci_base** %142, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.mci*, %struct.mci** %14, align 8
  %145 = getelementptr inbounds %struct.mci, %struct.mci* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.mci_cfg*, %struct.mci_cfg** %7, align 8
  %147 = getelementptr inbounds %struct.mci_cfg, %struct.mci_cfg* %146, i32 0, i32 0
  %148 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %147, align 8
  %149 = bitcast i32 (%struct.dvb_frontend.0*, i32)* %148 to i32 (%struct.dvb_frontend*, i32)*
  %150 = load i32 (%struct.dvb_frontend*, i32)**, i32 (%struct.dvb_frontend*, i32)*** %9, align 8
  store i32 (%struct.dvb_frontend*, i32)* %149, i32 (%struct.dvb_frontend*, i32)** %150, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.mci*, %struct.mci** %14, align 8
  %153 = getelementptr inbounds %struct.mci, %struct.mci* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.mci*, %struct.mci** %14, align 8
  %156 = getelementptr inbounds %struct.mci, %struct.mci* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.mci_cfg*, %struct.mci_cfg** %7, align 8
  %158 = getelementptr inbounds %struct.mci_cfg, %struct.mci_cfg* %157, i32 0, i32 1
  %159 = load i32 (%struct.mci_base.1*)*, i32 (%struct.mci_base.1*)** %158, align 8
  %160 = icmp ne i32 (%struct.mci_base.1*)* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %130
  %162 = load %struct.mci_cfg*, %struct.mci_cfg** %7, align 8
  %163 = getelementptr inbounds %struct.mci_cfg, %struct.mci_cfg* %162, i32 0, i32 1
  %164 = load i32 (%struct.mci_base.1*)*, i32 (%struct.mci_base.1*)** %163, align 8
  %165 = load %struct.mci*, %struct.mci** %14, align 8
  %166 = bitcast %struct.mci* %165 to %struct.mci_base.1*
  %167 = call i32 %164(%struct.mci_base.1* %166)
  br label %168

168:                                              ; preds = %161, %130
  %169 = load %struct.mci*, %struct.mci** %14, align 8
  %170 = getelementptr inbounds %struct.mci, %struct.mci* %169, i32 0, i32 4
  store %struct.dvb_frontend* %170, %struct.dvb_frontend** %5, align 8
  br label %175

171:                                              ; preds = %111, %72
  %172 = load %struct.mci*, %struct.mci** %14, align 8
  %173 = bitcast %struct.mci* %172 to %struct.mci_base*
  %174 = call i32 @kfree(%struct.mci_base* %173)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %5, align 8
  br label %175

175:                                              ; preds = %171, %168, %49
  %176 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  ret %struct.dvb_frontend* %176
}

declare dso_local %struct.mci_base* @kzalloc(i32, i32) #1

declare dso_local %struct.mci_base* @match_base(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ddb_irq_set(%struct.ddb*, i32, i32, i32, %struct.mci_base*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @probe(%struct.mci_base*) #1

declare dso_local i32 @kfree(%struct.mci_base*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
