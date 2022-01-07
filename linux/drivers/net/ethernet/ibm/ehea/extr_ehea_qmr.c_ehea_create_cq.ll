; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_create_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_cq = type { i32, i32, %struct.TYPE_2__, i32, %struct.ehea_adapter* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ehea_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"alloc_resource_cq failed\0A\00", align 1
@EHEA_PAGESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"hw_qpageit_get_inc failed\0A\00", align 1
@EHEA_CQ_REGISTER_ORIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"register_rpage_cq failed ehea_cq=%p hret=%llx counter=%i act_pages=%i\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"registration of pages not complete hret=%llx\0A\00", align 1
@H_PAGE_REGISTERED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"CQ: registration of page failed hret=%llx\0A\00", align 1
@FORCE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ehea_cq* @ehea_create_cq(%struct.ehea_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ehea_cq*, align 8
  %6 = alloca %struct.ehea_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehea_cq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ehea_cq* @kzalloc(i32 40, i32 %16)
  store %struct.ehea_cq* %17, %struct.ehea_cq** %10, align 8
  %18 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %19 = icmp ne %struct.ehea_cq* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %163

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %24 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %28 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %32 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %35 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %36 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %35, i32 0, i32 4
  store %struct.ehea_adapter* %34, %struct.ehea_adapter** %36, align 8
  %37 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %41 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %40, i32 0, i32 2
  %42 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %43 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %42, i32 0, i32 0
  %44 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %45 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %44, i32 0, i32 3
  %46 = call i32 @ehea_h_alloc_resource_cq(i32 %39, %struct.TYPE_2__* %41, i32* %43, i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @H_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %21
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %160

52:                                               ; preds = %21
  %53 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %54 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %53, i32 0, i32 1
  %55 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %56 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @EHEA_PAGESIZE, align 4
  %60 = call i32 @hw_queue_ctor(i32* %54, i32 %58, i32 %59, i32 4)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %151

64:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %135, %64
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %68 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %138

72:                                               ; preds = %65
  %73 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %74 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %73, i32 0, i32 1
  %75 = call i8* @hw_qpageit_get_inc(i32* %74)
  store i8* %75, i8** %15, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %147

80:                                               ; preds = %72
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @__pa(i8* %81)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @EHEA_CQ_REGISTER_ORIG, align 4
  %87 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %88 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @ehea_h_register_rpage(i32 %85, i32 0, i32 %86, i32 %89, i32 %90, i32 1)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @H_SUCCESS, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %80
  %96 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %100 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), %struct.ehea_cq* %96, i32 %97, i32 %98, i32 %102)
  br label %147

104:                                              ; preds = %80
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %107 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = icmp eq i32 %105, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %104
  %113 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %114 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %113, i32 0, i32 1
  %115 = call i8* @hw_qpageit_get_inc(i32* %114)
  store i8* %115, i8** %15, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @H_SUCCESS, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = load i8*, i8** %15, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %112
  %123 = load i32, i32* %11, align 4
  %124 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %147

125:                                              ; preds = %119
  br label %134

126:                                              ; preds = %104
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @H_PAGE_REGISTERED, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* %11, align 4
  %132 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  br label %147

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %125
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %65

138:                                              ; preds = %65
  %139 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %140 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %139, i32 0, i32 1
  %141 = call i32 @hw_qeit_reset(i32* %140)
  %142 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %143 = call i32 @ehea_reset_cq_ep(%struct.ehea_cq* %142)
  %144 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %145 = call i32 @ehea_reset_cq_n1(%struct.ehea_cq* %144)
  %146 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  store %struct.ehea_cq* %146, %struct.ehea_cq** %5, align 8
  br label %164

147:                                              ; preds = %130, %122, %95, %78
  %148 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %149 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %148, i32 0, i32 1
  %150 = call i32 @hw_queue_dtor(i32* %149)
  br label %151

151:                                              ; preds = %147, %63
  %152 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %153 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %156 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @FORCE_FREE, align 4
  %159 = call i32 @ehea_h_free_resource(i32 %154, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %151, %50
  %161 = load %struct.ehea_cq*, %struct.ehea_cq** %10, align 8
  %162 = call i32 @kfree(%struct.ehea_cq* %161)
  br label %163

163:                                              ; preds = %160, %20
  store %struct.ehea_cq* null, %struct.ehea_cq** %5, align 8
  br label %164

164:                                              ; preds = %163, %138
  %165 = load %struct.ehea_cq*, %struct.ehea_cq** %5, align 8
  ret %struct.ehea_cq* %165
}

declare dso_local %struct.ehea_cq* @kzalloc(i32, i32) #1

declare dso_local i32 @ehea_h_alloc_resource_cq(i32, %struct.TYPE_2__*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @hw_queue_ctor(i32*, i32, i32, i32) #1

declare dso_local i8* @hw_qpageit_get_inc(i32*) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @ehea_h_register_rpage(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hw_qeit_reset(i32*) #1

declare dso_local i32 @ehea_reset_cq_ep(%struct.ehea_cq*) #1

declare dso_local i32 @ehea_reset_cq_n1(%struct.ehea_cq*) #1

declare dso_local i32 @hw_queue_dtor(i32*) #1

declare dso_local i32 @ehea_h_free_resource(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ehea_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
