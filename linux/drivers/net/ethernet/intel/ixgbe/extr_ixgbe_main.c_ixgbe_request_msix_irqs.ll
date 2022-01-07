; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_request_msix_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_request_msix_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i8*, i32, %struct.msix_entry*, i32, %struct.ixgbe_adapter**, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.net_device* }
%struct.msix_entry = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i8* }
%struct.ixgbe_q_vector = type { i32, i8*, i32, %struct.msix_entry*, i32, %struct.ixgbe_q_vector**, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.net_device* }

@.str = private unnamed_addr constant [11 x i8] c"%s-TxRx-%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-rx-%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-tx-%u\00", align 1
@ixgbe_msix_clean_rings = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"request_irq failed for MSIX interrupt Error: %d\0A\00", align 1
@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@ixgbe_msix_other = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"request_irq for msix_other failed: %d\0A\00", align 1
@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_request_msix_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_request_msix_irqs(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_q_vector*, align 8
  %10 = alloca %struct.msix_entry*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 9
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %123, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %126

20:                                               ; preds = %14
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %21, i32 0, i32 5
  %23 = load %struct.ixgbe_adapter**, %struct.ixgbe_adapter*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %23, i64 %25
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %26, align 8
  %28 = bitcast %struct.ixgbe_adapter* %27 to %struct.ixgbe_q_vector*
  store %struct.ixgbe_q_vector* %28, %struct.ixgbe_q_vector** %9, align 8
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 3
  %31 = load %struct.msix_entry*, %struct.msix_entry** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %31, i64 %33
  store %struct.msix_entry* %34, %struct.msix_entry** %10, align 8
  %35 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %9, align 8
  %36 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %20
  %41 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %9, align 8
  %42 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %9, align 8
  %48 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  %55 = call i32 @snprintf(i8* %49, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53)
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %93

58:                                               ; preds = %40, %20
  %59 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %9, align 8
  %60 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %9, align 8
  %66 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %5, align 4
  %73 = call i32 @snprintf(i8* %67, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %70, i32 %71)
  br label %92

74:                                               ; preds = %58
  %75 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %9, align 8
  %76 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %9, align 8
  %82 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = call i32 @snprintf(i8* %83, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %86, i32 %87)
  br label %91

90:                                               ; preds = %74
  br label %123

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %64
  br label %93

93:                                               ; preds = %92, %46
  %94 = load %struct.msix_entry*, %struct.msix_entry** %10, align 8
  %95 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %9, align 8
  %98 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %9, align 8
  %101 = call i32 @request_irq(i32 %96, i32* @ixgbe_msix_clean_rings, i32 0, i8* %99, %struct.ixgbe_q_vector* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load i32, i32* @probe, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @e_err(i32 %105, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %149

108:                                              ; preds = %93
  %109 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load %struct.msix_entry*, %struct.msix_entry** %10, align 8
  %117 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %9, align 8
  %120 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %119, i32 0, i32 6
  %121 = call i32 @irq_set_affinity_hint(i32 %118, i32* %120)
  br label %122

122:                                              ; preds = %115, %108
  br label %123

123:                                              ; preds = %122, %90
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %14

126:                                              ; preds = %14
  %127 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %127, i32 0, i32 3
  %129 = load %struct.msix_entry*, %struct.msix_entry** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %129, i64 %131
  %133 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** @ixgbe_msix_other, align 8
  %136 = load %struct.net_device*, %struct.net_device** %4, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %140 = bitcast %struct.ixgbe_adapter* %139 to %struct.ixgbe_q_vector*
  %141 = call i32 @request_irq(i32 %134, i32* %135, i32 0, i8* %138, %struct.ixgbe_q_vector* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %126
  %145 = load i32, i32* @probe, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @e_err(i32 %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %149

148:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %200

149:                                              ; preds = %144, %104
  br label %150

150:                                              ; preds = %153, %149
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %182

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %7, align 4
  %156 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %157 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %156, i32 0, i32 3
  %158 = load %struct.msix_entry*, %struct.msix_entry** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %158, i64 %160
  %162 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @irq_set_affinity_hint(i32 %163, i32* null)
  %165 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %166 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %165, i32 0, i32 3
  %167 = load %struct.msix_entry*, %struct.msix_entry** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %167, i64 %169
  %171 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %174 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %173, i32 0, i32 5
  %175 = load %struct.ixgbe_adapter**, %struct.ixgbe_adapter*** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %175, i64 %177
  %179 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %178, align 8
  %180 = bitcast %struct.ixgbe_adapter* %179 to %struct.ixgbe_q_vector*
  %181 = call i32 @free_irq(i32 %172, %struct.ixgbe_q_vector* %180)
  br label %150

182:                                              ; preds = %150
  %183 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %186 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %190 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @pci_disable_msix(i32 %191)
  %193 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %194 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %193, i32 0, i32 3
  %195 = load %struct.msix_entry*, %struct.msix_entry** %194, align 8
  %196 = call i32 @kfree(%struct.msix_entry* %195)
  %197 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %198 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %197, i32 0, i32 3
  store %struct.msix_entry* null, %struct.msix_entry** %198, align 8
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %182, %148
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i8*, %struct.ixgbe_q_vector*) #1

declare dso_local i32 @e_err(i32, i8*, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.ixgbe_q_vector*) #1

declare dso_local i32 @pci_disable_msix(i32) #1

declare dso_local i32 @kfree(%struct.msix_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
