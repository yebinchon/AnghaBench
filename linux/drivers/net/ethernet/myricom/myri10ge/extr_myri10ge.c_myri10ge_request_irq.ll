; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i32, i32, %struct.myri10ge_slice_state*, %struct.net_device*, %struct.TYPE_2__*, %struct.pci_dev* }
%struct.myri10ge_slice_state = type { i8* }
%struct.net_device = type { i8* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, i32 }

@myri10ge_msi = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Error %d setting up MSI-X\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Error %d setting up MSI; falling back to xPIC\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s:slice-%d\00", align 1
@myri10ge_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"slice %d failed to allocate IRQ\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to allocate IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*)* @myri10ge_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_request_irq(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.myri10ge_slice_state*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %3, align 8
  %9 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %10 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %9, i32 0, i32 6
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %13 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %16 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %18 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  store i32 0, i32* %8, align 4
  %19 = load i64, i64* @myri10ge_msi, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %69

21:                                               ; preds = %1
  %22 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %23 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %29 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %32 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %35 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pci_enable_msix_range(%struct.pci_dev* %27, %struct.TYPE_2__* %30, i32 %33, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %182

46:                                               ; preds = %26
  %47 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %48 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %21
  %50 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %51 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_enable_msi(%struct.pci_dev* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %67

64:                                               ; preds = %54
  %65 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %66 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %1
  %70 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %71 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %149

74:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %145, %74
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %78 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %148

81:                                               ; preds = %75
  %82 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %83 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %82, i32 0, i32 3
  %84 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %84, i64 %86
  store %struct.myri10ge_slice_state* %87, %struct.myri10ge_slice_state** %5, align 8
  %88 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %5, align 8
  %89 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %6, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @snprintf(i8* %90, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %93, i32 %94)
  %96 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %97 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %96, i32 0, i32 5
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @myri10ge_intr, align 4
  %105 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %5, align 8
  %106 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %5, align 8
  %109 = call i32 @request_irq(i32 %103, i32 %104, i32 0, i8* %107, %struct.myri10ge_slice_state* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %81
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i32*, i8*, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %122, %112
  %120 = load i32, i32* %7, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  %123 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %124 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %123, i32 0, i32 5
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %132 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %131, i32 0, i32 3
  %133 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %133, i64 %135
  %137 = call i32 @free_irq(i32 %130, %struct.myri10ge_slice_state* %136)
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %7, align 4
  br label %119

140:                                              ; preds = %119
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = call i32 @pci_disable_msix(%struct.pci_dev* %141)
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %2, align 4
  br label %182

144:                                              ; preds = %81
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %75

148:                                              ; preds = %75
  br label %180

149:                                              ; preds = %69
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @myri10ge_intr, align 4
  %154 = load i32, i32* @IRQF_SHARED, align 4
  %155 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %156 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %155, i32 0, i32 4
  %157 = load %struct.net_device*, %struct.net_device** %156, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %161 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %160, i32 0, i32 3
  %162 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %161, align 8
  %163 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %162, i64 0
  %164 = call i32 @request_irq(i32 %152, i32 %153, i32 %154, i8* %159, %struct.myri10ge_slice_state* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %149
  %168 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %169 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %168, i32 0, i32 0
  %170 = call i32 (i32*, i8*, ...) @dev_err(i32* %169, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %172 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = call i32 @pci_disable_msi(%struct.pci_dev* %176)
  br label %178

178:                                              ; preds = %175, %167
  br label %179

179:                                              ; preds = %178, %149
  br label %180

180:                                              ; preds = %179, %148
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %180, %140, %40
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @pci_enable_msix_range(%struct.pci_dev*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.myri10ge_slice_state*) #1

declare dso_local i32 @free_irq(i32, %struct.myri10ge_slice_state*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
