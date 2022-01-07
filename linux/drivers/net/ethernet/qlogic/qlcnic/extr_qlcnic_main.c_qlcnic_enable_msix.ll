; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_MSI_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"using msi-x interrupts\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Unable to allocate %d MSI-X vectors, Available vectors %d\0A\00", align 1
@QLCNIC_82XX_MINIMUM_VECTOR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@QLCNIC_83XX_MINIMUM_VECTOR = common dso_local global i32 0, align 4
@QLCNIC_SINGLE_RING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Trying to allocate %d MSI-X interrupt vectors\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Unable to allocate %d MSI-X vectors, err=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_enable_msix(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 5
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_5__* @kcalloc(i32 %17, i32 4, i32 %18)
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 4
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %170

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* @QLCNIC_MSI_ENABLED, align 4
  %32 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %167

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %152, %45
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %47

63:                                               ; preds = %47
  %64 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @pci_enable_msix_range(%struct.pci_dev* %64, %struct.TYPE_5__* %67, i32 1, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %63
  %74 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = call i32 (i32*, i8*, ...) @dev_info(i32* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %170

87:                                               ; preds = %63
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %158

90:                                               ; preds = %87
  %91 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %92 = call i32 @pci_disable_msix(%struct.pci_dev* %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32*, i8*, ...) @dev_info(i32* %94, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %99 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %90
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @rounddown_pow_of_two(i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @QLCNIC_82XX_MINIMUM_VECTOR, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @ENOSPC, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %170

110:                                              ; preds = %101
  br label %124

111:                                              ; preds = %90
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @rounddown_pow_of_two(i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @QLCNIC_83XX_MINIMUM_VECTOR, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load i32, i32* @ENOSPC, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %170

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %110
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %126 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %130 = call i32 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %135 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @QLCNIC_SINGLE_RING, align 4
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %138 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  br label %149

139:                                              ; preds = %128, %124
  %140 = load i32, i32* %5, align 4
  %141 = sdiv i32 %140, 2
  %142 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %143 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %145 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %148 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %139, %132
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %5, align 4
  %156 = call i32 (i32*, i8*, ...) @dev_info(i32* %154, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  br label %46

157:                                              ; preds = %149
  br label %165

158:                                              ; preds = %87
  %159 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 (i32*, i8*, ...) @dev_info(i32* %160, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %162)
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %3, align 4
  br label %170

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166, %30
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %167, %158, %120, %107, %73, %26
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_5__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix_range(%struct.pci_dev*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
