; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_setup_tss_rss_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_setup_tss_rss_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_5__*, i32, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }

@QLCNIC_TSS_RSS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to allocate %d MSI-X vectors, Available vectors %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Restoring %d Tx, %d SDS rings for total %d vectors.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_setup_tss_rss_intr(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @QLCNIC_TSS_RSS, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %50

44:                                               ; preds = %33
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %52 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 6
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.TYPE_5__* @kcalloc(i32 %63, i32 4, i32 %64)
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %66, i32 0, i32 6
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %67, align 8
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %68, i32 0, i32 6
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = icmp ne %struct.TYPE_5__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %187

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %57
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %90, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 6
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %82, i32* %89, align 4
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %77

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %141, %93
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %96, i32 0, i32 6
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @pci_enable_msix_exact(%struct.pci_dev* %95, %struct.TYPE_5__* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @ENOSPC, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %153

105:                                              ; preds = %94
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %105
  %111 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %187

117:                                              ; preds = %110, %105
  %118 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %119 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 (i32, i8*, i32, i32, ...) @netdev_info(i32 %120, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %126, %129
  store i32 %130, i32* %5, align 4
  %131 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %132 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %133, i32 0, i32 2
  store i32 0, i32* %134, align 8
  %135 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %136 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %117
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %138, %117
  %142 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %146 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %149 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 (i32, i8*, i32, i32, ...) @netdev_info(i32 %144, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %150, i32 %151)
  br label %94

153:                                              ; preds = %94
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %187

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %161, i32 0, i32 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 4
  %165 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %166 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %159
  %170 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %171 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %174 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %169, %159
  %176 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %177 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %185 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %180, %175
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %156, %115, %72
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local %struct.TYPE_5__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix_exact(%struct.pci_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
