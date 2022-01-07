; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_writeConfigRid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_writeConfigRid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FLAG_COMMIT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@FLAG_RESET = common dso_local global i32 0, align 4
@MODE_CFG_MASK = common dso_local global i32 0, align 4
@MODE_STA_IBSS = common dso_local global i32 0, align 4
@FLAG_ADHOC = common dso_local global i32 0, align 4
@RID_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32)* @writeConfigRid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeConfigRid(%struct.airo_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.airo_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store %struct.airo_info* %0, %struct.airo_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @FLAG_COMMIT, align 4
  %8 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %9 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @SUCCESS, align 4
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load i32, i32* @FLAG_COMMIT, align 4
  %16 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %17 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %16, i32 0, i32 0
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load i32, i32* @FLAG_RESET, align 4
  %20 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %21 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %24 = call i32 @checkThrottle(%struct.airo_info* %23)
  %25 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %26 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %25, i32 0, i32 1
  %27 = bitcast %struct.TYPE_3__* %6 to i8*
  %28 = bitcast %struct.TYPE_3__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MODE_CFG_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @MODE_STA_IBSS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %14
  %36 = load i32, i32* @FLAG_ADHOC, align 4
  %37 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %38 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  br label %45

40:                                               ; preds = %14
  %41 = load i32, i32* @FLAG_ADHOC, align 4
  %42 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %43 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %42, i32 0, i32 0
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %47 = load i32, i32* @RID_CONFIG, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @PC4500_writerid(%struct.airo_info* %46, i32 %47, %struct.TYPE_3__* %6, i32 4, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @checkThrottle(%struct.airo_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @PC4500_writerid(%struct.airo_info*, i32, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
