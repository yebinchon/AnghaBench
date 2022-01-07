; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_create_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_create_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_eq = type { i32, i32, %struct.TYPE_2__, i32, %struct.ehea_adapter* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ehea_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"alloc_resource_eq failed\0A\00", align 1
@EHEA_PAGESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"can't allocate eq pages\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"hw_qpageit_get_inc failed\0A\00", align 1
@H_RESOURCE = common dso_local global i64 0, align 8
@EHEA_EQ_REGISTER_ORIG = common dso_local global i32 0, align 4
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@FORCE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ehea_eq* @ehea_create_eq(%struct.ehea_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ehea_eq*, align 8
  %6 = alloca %struct.ehea_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ehea_eq*, align 8
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ehea_eq* @kzalloc(i32 40, i32 %16)
  store %struct.ehea_eq* %17, %struct.ehea_eq** %15, align 8
  %18 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %19 = icmp ne %struct.ehea_eq* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store %struct.ehea_eq* null, %struct.ehea_eq** %5, align 8
  br label %145

21:                                               ; preds = %4
  %22 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %23 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %24 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %23, i32 0, i32 4
  store %struct.ehea_adapter* %22, %struct.ehea_adapter** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %27 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %31 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %35 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %38 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %37, i32 0, i32 3
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %44 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %43, i32 0, i32 2
  %45 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %46 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %45, i32 0, i32 0
  %47 = call i64 @ehea_h_alloc_resource_eq(i32 %42, %struct.TYPE_2__* %44, i32* %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @H_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %21
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %142

53:                                               ; preds = %21
  %54 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %55 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %54, i32 0, i32 1
  %56 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %57 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EHEA_PAGESIZE, align 4
  %61 = call i32 @hw_queue_ctor(i32* %55, i32 %59, i32 %60, i32 4)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %133

66:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %121, %66
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %70 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %124

74:                                               ; preds = %67
  %75 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %76 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %75, i32 0, i32 1
  %77 = call i8* @hw_qpageit_get_inc(i32* %76)
  store i8* %77, i8** %14, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i64, i64* @H_RESOURCE, align 8
  store i64 %82, i64* %12, align 8
  br label %129

83:                                               ; preds = %74
  %84 = load i8*, i8** %14, align 8
  %85 = call i64 @__pa(i8* %84)
  store i64 %85, i64* %13, align 8
  %86 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %87 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @EHEA_EQ_REGISTER_ORIG, align 4
  %90 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %91 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i64 @ehea_h_register_rpage(i32 %88, i32 0, i32 %89, i32 %92, i64 %93, i32 1)
  store i64 %94, i64* %12, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %97 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp eq i32 %95, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %83
  %103 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %104 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %103, i32 0, i32 1
  %105 = call i8* @hw_qpageit_get_inc(i32* %104)
  store i8* %105, i8** %14, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @H_SUCCESS, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %112, label %109

109:                                              ; preds = %102
  %110 = load i8*, i8** %14, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %102
  br label %129

113:                                              ; preds = %109
  br label %120

114:                                              ; preds = %83
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %129

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %113
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %67

124:                                              ; preds = %67
  %125 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %126 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %125, i32 0, i32 1
  %127 = call i32 @hw_qeit_reset(i32* %126)
  %128 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  store %struct.ehea_eq* %128, %struct.ehea_eq** %5, align 8
  br label %145

129:                                              ; preds = %118, %112, %80
  %130 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %131 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %130, i32 0, i32 1
  %132 = call i32 @hw_queue_dtor(i32* %131)
  br label %133

133:                                              ; preds = %129, %64
  %134 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %135 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %138 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @FORCE_FREE, align 4
  %141 = call i32 @ehea_h_free_resource(i32 %136, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %133, %51
  %143 = load %struct.ehea_eq*, %struct.ehea_eq** %15, align 8
  %144 = call i32 @kfree(%struct.ehea_eq* %143)
  store %struct.ehea_eq* null, %struct.ehea_eq** %5, align 8
  br label %145

145:                                              ; preds = %142, %124, %20
  %146 = load %struct.ehea_eq*, %struct.ehea_eq** %5, align 8
  ret %struct.ehea_eq* %146
}

declare dso_local %struct.ehea_eq* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @ehea_h_alloc_resource_eq(i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @hw_queue_ctor(i32*, i32, i32, i32) #1

declare dso_local i8* @hw_qpageit_get_inc(i32*) #1

declare dso_local i64 @__pa(i8*) #1

declare dso_local i64 @ehea_h_register_rpage(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @hw_qeit_reset(i32*) #1

declare dso_local i32 @hw_queue_dtor(i32*) #1

declare dso_local i32 @ehea_h_free_resource(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ehea_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
