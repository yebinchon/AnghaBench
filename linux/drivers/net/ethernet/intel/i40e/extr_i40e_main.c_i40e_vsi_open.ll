; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i32, %struct.TYPE_5__*, %struct.i40e_pf* }
%struct.TYPE_5__ = type { i8* }
%struct.i40e_pf = type { i64, %struct.i40e_vsi**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@I40E_INT_NAME_STR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@I40E_VSI_FDIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%s-%s:fdir\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I40E_PF_RESET_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_vsi_open(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 3
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %4, align 8
  %12 = load i32, i32* @I40E_INT_NAME_STR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %17 = call i32 @i40e_vsi_setup_tx_resources(%struct.i40e_vsi* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %122

21:                                               ; preds = %1
  %22 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %23 = call i32 @i40e_vsi_setup_rx_resources(%struct.i40e_vsi* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %119

27:                                               ; preds = %21
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %29 = call i32 @i40e_vsi_configure(%struct.i40e_vsi* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %119

33:                                               ; preds = %27
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %35 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %33
  %39 = sub i64 %13, 1
  %40 = trunc i64 %39 to i32
  %41 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %42 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i8* @dev_driver_string(i32* %44)
  %46 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %47 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @snprintf(i8* %15, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %50)
  %52 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %53 = call i32 @i40e_vsi_request_irq(%struct.i40e_vsi* %52, i8* %15)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  br label %119

57:                                               ; preds = %38
  %58 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %59 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %62 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @netif_set_real_num_tx_queues(%struct.TYPE_5__* %60, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %116

68:                                               ; preds = %57
  %69 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %70 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %73 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @netif_set_real_num_rx_queues(%struct.TYPE_5__* %71, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %116

79:                                               ; preds = %68
  br label %106

80:                                               ; preds = %33
  %81 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %82 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @I40E_VSI_FDIR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = sub i64 %13, 1
  %88 = trunc i64 %87 to i32
  %89 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %90 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i8* @dev_driver_string(i32* %92)
  %94 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %95 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i8* @dev_name(i32* %97)
  %99 = call i32 @snprintf(i8* %15, i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %93, i8* %98)
  %100 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %101 = call i32 @i40e_vsi_request_irq(%struct.i40e_vsi* %100, i8* %15)
  store i32 %101, i32* %7, align 4
  br label %105

102:                                              ; preds = %80
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %119

105:                                              ; preds = %86
  br label %106

106:                                              ; preds = %105, %79
  %107 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %108 = call i32 @i40e_up_complete(%struct.i40e_vsi* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %113

112:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %141

113:                                              ; preds = %111
  %114 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %115 = call i32 @i40e_down(%struct.i40e_vsi* %114)
  br label %116

116:                                              ; preds = %113, %78, %67
  %117 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %118 = call i32 @i40e_vsi_free_irq(%struct.i40e_vsi* %117)
  br label %119

119:                                              ; preds = %116, %102, %56, %32, %26
  %120 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %121 = call i32 @i40e_vsi_free_rx_resources(%struct.i40e_vsi* %120)
  br label %122

122:                                              ; preds = %119, %20
  %123 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %124 = call i32 @i40e_vsi_free_tx_resources(%struct.i40e_vsi* %123)
  %125 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %126 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %127 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %126, i32 0, i32 1
  %128 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %127, align 8
  %129 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %130 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %128, i64 %131
  %133 = load %struct.i40e_vsi*, %struct.i40e_vsi** %132, align 8
  %134 = icmp eq %struct.i40e_vsi* %125, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %122
  %136 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %137 = load i32, i32* @I40E_PF_RESET_FLAG, align 4
  %138 = call i32 @i40e_do_reset(%struct.i40e_pf* %136, i32 %137, i32 1)
  br label %139

139:                                              ; preds = %135, %122
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %141

141:                                              ; preds = %139, %112
  %142 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i40e_vsi_setup_tx_resources(%struct.i40e_vsi*) #2

declare dso_local i32 @i40e_vsi_setup_rx_resources(%struct.i40e_vsi*) #2

declare dso_local i32 @i40e_vsi_configure(%struct.i40e_vsi*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @dev_driver_string(i32*) #2

declare dso_local i32 @i40e_vsi_request_irq(%struct.i40e_vsi*, i8*) #2

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.TYPE_5__*, i32) #2

declare dso_local i8* @dev_name(i32*) #2

declare dso_local i32 @i40e_up_complete(%struct.i40e_vsi*) #2

declare dso_local i32 @i40e_down(%struct.i40e_vsi*) #2

declare dso_local i32 @i40e_vsi_free_irq(%struct.i40e_vsi*) #2

declare dso_local i32 @i40e_vsi_free_rx_resources(%struct.i40e_vsi*) #2

declare dso_local i32 @i40e_vsi_free_tx_resources(%struct.i40e_vsi*) #2

declare dso_local i32 @i40e_do_reset(%struct.i40e_pf*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
