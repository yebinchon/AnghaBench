; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_request_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_request_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, i8*, i32, %struct.alx_priv**, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i8* }
%struct.alx_napi = type { i32, i8*, i32, %struct.alx_napi**, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.net_device* }

@alx_intr_msix_misc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-TxRx-%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-tx-%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-rx-%u\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s-unused\00", align 1
@alx_intr_msix_ring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*)* @alx_request_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_request_msix(%struct.alx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.alx_napi*, align 8
  store %struct.alx_priv* %0, %struct.alx_priv** %3, align 8
  %10 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %11 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %10, i32 0, i32 7
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %14 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pci_irq_vector(i32 %16, i32 0)
  %18 = load i32, i32* @alx_intr_msix_misc, align 4
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %23 = call i32 @request_irq(i32 %17, i32 %18, i32 0, i8* %21, %struct.alx_priv* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %174

27:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %134, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %31 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %137

34:                                               ; preds = %28
  %35 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %36 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %35, i32 0, i32 3
  %37 = load %struct.alx_priv**, %struct.alx_priv*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.alx_priv*, %struct.alx_priv** %37, i64 %39
  %41 = load %struct.alx_priv*, %struct.alx_priv** %40, align 8
  %42 = bitcast %struct.alx_priv* %41 to %struct.alx_napi*
  store %struct.alx_napi* %42, %struct.alx_napi** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %46 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %45, i32 0, i32 6
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %34
  %50 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %51 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %50, i32 0, i32 5
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %56 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %62 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %61, i32 0, i32 6
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %65)
  br label %113

67:                                               ; preds = %49, %34
  %68 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %69 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %68, i32 0, i32 6
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %74 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %80 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %79, i32 0, i32 6
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %78, i32 %83)
  br label %112

85:                                               ; preds = %67
  %86 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %87 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %86, i32 0, i32 5
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = icmp ne %struct.TYPE_5__* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %92 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %98 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %97, i32 0, i32 5
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %96, i32 %101)
  br label %111

103:                                              ; preds = %85
  %104 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %105 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %103, %90
  br label %112

112:                                              ; preds = %111, %72
  br label %113

113:                                              ; preds = %112, %54
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %116 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %118 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @pci_irq_vector(i32 %120, i32 %121)
  %123 = load i32, i32* @alx_intr_msix_ring, align 4
  %124 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %125 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.alx_napi*, %struct.alx_napi** %9, align 8
  %128 = bitcast %struct.alx_napi* %127 to %struct.alx_priv*
  %129 = call i32 @request_irq(i32 %122, i32 %123, i32 0, i8* %126, %struct.alx_priv* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %113
  br label %138

133:                                              ; preds = %113
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %28

137:                                              ; preds = %28
  store i32 0, i32* %2, align 4
  br label %176

138:                                              ; preds = %132
  %139 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %140 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  %145 = call i32 @pci_irq_vector(i32 %142, i32 %143)
  %146 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %147 = call i32 @free_irq(i32 %145, %struct.alx_priv* %146)
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %170, %138
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %173

154:                                              ; preds = %150
  %155 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %156 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  %161 = call i32 @pci_irq_vector(i32 %158, i32 %159)
  %162 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %163 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %162, i32 0, i32 3
  %164 = load %struct.alx_priv**, %struct.alx_priv*** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.alx_priv*, %struct.alx_priv** %164, i64 %166
  %168 = load %struct.alx_priv*, %struct.alx_priv** %167, align 8
  %169 = call i32 @free_irq(i32 %161, %struct.alx_priv* %168)
  br label %170

170:                                              ; preds = %154
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %150

173:                                              ; preds = %150
  br label %174

174:                                              ; preds = %173, %26
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %137
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.alx_priv*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @free_irq(i32, %struct.alx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
