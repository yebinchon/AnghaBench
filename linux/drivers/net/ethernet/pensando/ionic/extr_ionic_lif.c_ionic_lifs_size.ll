; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lifs_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lifs_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i32, i32, i32, i32, i32, i32, %struct.ionic_identity }
%struct.ionic_identity = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %union.ionic_lif_config }
%union.ionic_lif_config = type { i32* }
%struct.TYPE_7__ = type { i32 }

@IONIC_QTYPE_NOTIFYQ = common dso_local global i64 0, align 8
@IONIC_QTYPE_TXQ = common dso_local global i64 0, align 8
@IONIC_QTYPE_RXQ = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Can't get intrs from OS: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't get minimum %d intrs from OS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_lifs_size(%struct.ionic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic*, align 8
  %4 = alloca %struct.ionic_identity*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ionic_lif_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %3, align 8
  %16 = load %struct.ionic*, %struct.ionic** %3, align 8
  %17 = getelementptr inbounds %struct.ionic, %struct.ionic* %16, i32 0, i32 6
  store %struct.ionic_identity* %17, %struct.ionic_identity** %4, align 8
  %18 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %19 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %union.ionic_lif_config* %21, %union.ionic_lif_config** %7, align 8
  %22 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %23 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %28 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %union.ionic_lif_config*, %union.ionic_lif_config** %7, align 8
  %35 = bitcast %union.ionic_lif_config* %34 to i32**
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @IONIC_QTYPE_NOTIFYQ, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %union.ionic_lif_config*, %union.ionic_lif_config** %7, align 8
  %42 = bitcast %union.ionic_lif_config* %41 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @IONIC_QTYPE_TXQ, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %union.ionic_lif_config*, %union.ionic_lif_config** %7, align 8
  %49 = bitcast %union.ionic_lif_config* %48 to i32**
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @IONIC_QTYPE_RXQ, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @min(i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 (...) @num_online_cpus()
  %60 = call i32 @min(i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (...) @num_online_cpus()
  %63 = call i32 @min(i32 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %137, %131, %125, %1
  %65 = load i32, i32* %12, align 4
  %66 = add i32 1, %65
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %66, %67
  store i32 %68, i32* %5, align 4
  store i32 2, i32* %14, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %122

73:                                               ; preds = %64
  %74 = load %struct.ionic*, %struct.ionic** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @ionic_bus_alloc_irq_vectors(%struct.ionic* %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @ENOSPC, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.ionic*, %struct.ionic** %3, align 8
  %86 = getelementptr inbounds %struct.ionic, %struct.ionic* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %2, align 4
  br label %148

91:                                               ; preds = %79, %73
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @ENOSPC, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %122

97:                                               ; preds = %91
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.ionic*, %struct.ionic** %3, align 8
  %103 = call i32 @ionic_bus_free_irq_vectors(%struct.ionic* %102)
  br label %122

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.ionic*, %struct.ionic** %3, align 8
  %107 = getelementptr inbounds %struct.ionic, %struct.ionic* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.ionic*, %struct.ionic** %3, align 8
  %110 = getelementptr inbounds %struct.ionic, %struct.ionic* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.ionic*, %struct.ionic** %3, align 8
  %113 = getelementptr inbounds %struct.ionic, %struct.ionic* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.ionic*, %struct.ionic** %3, align 8
  %116 = getelementptr inbounds %struct.ionic, %struct.ionic* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.ionic*, %struct.ionic** %3, align 8
  %119 = getelementptr inbounds %struct.ionic, %struct.ionic* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ionic*, %struct.ionic** %3, align 8
  %121 = call i32 @ionic_debugfs_add_sizes(%struct.ionic* %120)
  store i32 0, i32* %2, align 4
  br label %148

122:                                              ; preds = %101, %96, %72
  %123 = load i32, i32* %11, align 4
  %124 = icmp ugt i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = lshr i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %64

128:                                              ; preds = %122
  %129 = load i32, i32* %13, align 4
  %130 = icmp ugt i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %13, align 4
  %133 = lshr i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %64

134:                                              ; preds = %128
  %135 = load i32, i32* %12, align 4
  %136 = icmp ugt i32 %135, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %12, align 4
  %139 = lshr i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %64

140:                                              ; preds = %134
  %141 = load %struct.ionic*, %struct.ionic** %3, align 8
  %142 = getelementptr inbounds %struct.ionic, %struct.ionic* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @dev_err(i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @ENOSPC, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %140, %104, %84
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @ionic_bus_alloc_irq_vectors(%struct.ionic*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ionic_bus_free_irq_vectors(%struct.ionic*) #1

declare dso_local i32 @ionic_debugfs_add_sizes(%struct.ionic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
