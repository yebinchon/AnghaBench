; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_of.c_read_adapter_irq_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_of.c_read_adapter_irq_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.irq_avail*, i32 }
%struct.irq_avail = type { i64, i64, %struct.irq_avail* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"interrupt-ranges\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cxl_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"available IRQ range: %#lx-%#lx (%lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, %struct.device_node*)* @read_adapter_irq_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_adapter_irq_config(%struct.cxl* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_avail*, align 8
  store %struct.cxl* %0, %struct.cxl** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = call i32* @of_get_property(%struct.device_node* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %203

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29, %22
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %203

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kcalloc(i32 %41, i32 24, i32 %42)
  %44 = bitcast i8* %43 to %struct.irq_avail*
  %45 = load %struct.cxl*, %struct.cxl** %4, align 8
  %46 = getelementptr inbounds %struct.cxl, %struct.cxl* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store %struct.irq_avail* %44, %struct.irq_avail** %48, align 8
  %49 = load %struct.cxl*, %struct.cxl** %4, align 8
  %50 = getelementptr inbounds %struct.cxl, %struct.cxl* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load %struct.irq_avail*, %struct.irq_avail** %52, align 8
  %54 = icmp eq %struct.irq_avail* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %203

58:                                               ; preds = %40
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @be32_to_cpu(i32 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.cxl*, %struct.cxl** %4, align 8
  %65 = getelementptr inbounds %struct.cxl, %struct.cxl* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %63, i64* %67, align 8
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %154, %58
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %157

72:                                               ; preds = %68
  %73 = load %struct.cxl*, %struct.cxl** %4, align 8
  %74 = getelementptr inbounds %struct.cxl, %struct.cxl* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load %struct.irq_avail*, %struct.irq_avail** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %77, i64 %79
  store %struct.irq_avail* %80, %struct.irq_avail** %10, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @be32_to_cpu(i32 %86)
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %90 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = mul nsw i32 %92, 2
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @be32_to_cpu(i32 %97)
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %101 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %103 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @BITS_TO_LONGS(i64 %104)
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @kcalloc(i32 %105, i32 24, i32 %106)
  %108 = bitcast i8* %107 to %struct.irq_avail*
  %109 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %110 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %109, i32 0, i32 2
  store %struct.irq_avail* %108, %struct.irq_avail** %110, align 8
  %111 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %112 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %111, i32 0, i32 2
  %113 = load %struct.irq_avail*, %struct.irq_avail** %112, align 8
  %114 = icmp eq %struct.irq_avail* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %72
  br label %168

116:                                              ; preds = %72
  %117 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %118 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.cxl*, %struct.cxl** %4, align 8
  %121 = getelementptr inbounds %struct.cxl, %struct.cxl* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp slt i64 %119, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %116
  %127 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %128 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.cxl*, %struct.cxl** %4, align 8
  %131 = getelementptr inbounds %struct.cxl, %struct.cxl* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i64 %129, i64* %133, align 8
  br label %134

134:                                              ; preds = %126, %116
  %135 = load i64, i64* @cxl_verbose, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %139 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %142 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %145 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = sub nsw i64 %147, 1
  %149 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %150 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %140, i64 %148, i64 %151)
  br label %153

153:                                              ; preds = %137, %134
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %68

157:                                              ; preds = %68
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.cxl*, %struct.cxl** %4, align 8
  %160 = getelementptr inbounds %struct.cxl, %struct.cxl* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  store i32 %158, i32* %162, align 8
  %163 = load %struct.cxl*, %struct.cxl** %4, align 8
  %164 = getelementptr inbounds %struct.cxl, %struct.cxl* %163, i32 0, i32 0
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = call i32 @spin_lock_init(i32* %166)
  store i32 0, i32* %3, align 4
  br label %203

168:                                              ; preds = %115
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %187, %168
  %172 = load i32, i32* %9, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %171
  %175 = load %struct.cxl*, %struct.cxl** %4, align 8
  %176 = getelementptr inbounds %struct.cxl, %struct.cxl* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  %179 = load %struct.irq_avail*, %struct.irq_avail** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %179, i64 %181
  store %struct.irq_avail* %182, %struct.irq_avail** %10, align 8
  %183 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %184 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %183, i32 0, i32 2
  %185 = load %struct.irq_avail*, %struct.irq_avail** %184, align 8
  %186 = call i32 @kfree(%struct.irq_avail* %185)
  br label %187

187:                                              ; preds = %174
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %9, align 4
  br label %171

190:                                              ; preds = %171
  %191 = load %struct.cxl*, %struct.cxl** %4, align 8
  %192 = getelementptr inbounds %struct.cxl, %struct.cxl* %191, i32 0, i32 0
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 2
  %195 = load %struct.irq_avail*, %struct.irq_avail** %194, align 8
  %196 = call i32 @kfree(%struct.irq_avail* %195)
  %197 = load %struct.cxl*, %struct.cxl** %4, align 8
  %198 = getelementptr inbounds %struct.cxl, %struct.cxl* %197, i32 0, i32 0
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 2
  store %struct.irq_avail* null, %struct.irq_avail** %200, align 8
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %190, %157, %55, %37, %19
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i32 @pr_info(i8*, i64, i64, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.irq_avail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
