; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_dvico_fusionhdtv_hybrid_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_dvico_fusionhdtv_hybrid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.cx88_core = type { i32 }

@__const.dvico_fusionhdtv_hybrid_init.msg = private unnamed_addr constant %struct.i2c_msg { i32 69, i32 0, %struct.TYPE_3__* null, i32 0 }, align 8
@dvico_fusionhdtv_hybrid_init.init_bufs = internal global [13 x [5 x %struct.TYPE_3__]] [[5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 0, i32 32, i32 1, i32 3 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 1, i32 0, i32 33 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 16, i32 0, i32 202 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 18, i32 0, i32 8 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 19, i32 0, i32 10 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 22, i32 1, i32 192 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 34, i32 1, i32 61 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 115, i32 1, i32 46 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 114, i32 0, i32 197 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 113, i32 1, i32 151 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 112, i32 0, i32 15 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 16, i32 176, i32 0, i32 1 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [5 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 3, i32 12, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer]], align 16
@.str = private unnamed_addr constant [56 x i8] c"dvico_fusionhdtv_hybrid_init buf %d failed (err = %d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*)* @dvico_fusionhdtv_hybrid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvico_fusionhdtv_hybrid_init(%struct.cx88_core* %0) #0 {
  %2 = alloca %struct.cx88_core*, align 8
  %3 = alloca %struct.i2c_msg, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %2, align 8
  %6 = bitcast %struct.i2c_msg* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.i2c_msg* @__const.dvico_fusionhdtv_hybrid_init.msg to i8*), i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__** bitcast ([13 x [5 x %struct.TYPE_3__]]* @dvico_fusionhdtv_hybrid_init.init_bufs to %struct.TYPE_3__**))
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [13 x [5 x %struct.TYPE_3__]], [13 x [5 x %struct.TYPE_3__]]* @dvico_fusionhdtv_hybrid_init.init_bufs, i64 0, i64 %13
  %15 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %3, i32 0, i32 2
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 12
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 5, i32 2
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %23 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %22, i32 0, i32 0
  %24 = call i32 @i2c_transfer(i32* %23, %struct.i2c_msg* %3, i32 1)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %11
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %35

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %7

35:                                               ; preds = %27, %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__**) #2

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @pr_warn(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
