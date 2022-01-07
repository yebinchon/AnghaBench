; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ocelot = type { i32 }

@S2_CORE_UPDATE_CTRL_UPDATE_SHOT = common dso_local global i32 0, align 4
@VCAP_SEL_ENTRY = common dso_local global i32 0, align 4
@vcap_is2 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S2_CORE_UPDATE_CTRL_UPDATE_ENTRY_DIS = common dso_local global i32 0, align 4
@VCAP_SEL_ACTION = common dso_local global i32 0, align 4
@S2_CORE_UPDATE_CTRL_UPDATE_ACTION_DIS = common dso_local global i32 0, align 4
@VCAP_SEL_COUNTER = common dso_local global i32 0, align 4
@S2_CORE_UPDATE_CTRL_UPDATE_CNT_DIS = common dso_local global i32 0, align 4
@S2_CORE_UPDATE_CTRL = common dso_local global i32 0, align 4
@vcap_s2_read_update_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocelot*, i64, i32, i32)* @vcap_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcap_cmd(%struct.ocelot* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocelot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ocelot* %0, %struct.ocelot** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @S2_CORE_UPDATE_CTRL_UPDATE_CMD(i32 %10)
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @S2_CORE_UPDATE_CTRL_UPDATE_ADDR(i64 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @S2_CORE_UPDATE_CTRL_UPDATE_SHOT, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @VCAP_SEL_ENTRY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 0), align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %67

26:                                               ; preds = %21, %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @VCAP_SEL_ENTRY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @S2_CORE_UPDATE_CTRL_UPDATE_ENTRY_DIS, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @VCAP_SEL_ACTION, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @S2_CORE_UPDATE_CTRL_UPDATE_ACTION_DIS, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @VCAP_SEL_COUNTER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @S2_CORE_UPDATE_CTRL_UPDATE_CNT_DIS, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.ocelot*, %struct.ocelot** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @S2_CORE_UPDATE_CTRL, align 4
  %57 = call i32 @ocelot_write(%struct.ocelot* %54, i32 %55, i32 %56)
  %58 = load i32, i32* @vcap_s2_read_update_ctrl, align 4
  %59 = load %struct.ocelot*, %struct.ocelot** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @S2_CORE_UPDATE_CTRL_UPDATE_SHOT, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @readx_poll_timeout(i32 %58, %struct.ocelot* %59, i32 %60, i32 %65, i32 10, i32 100000)
  br label %67

67:                                               ; preds = %53, %25
  ret void
}

declare dso_local i32 @S2_CORE_UPDATE_CTRL_UPDATE_CMD(i32) #1

declare dso_local i32 @S2_CORE_UPDATE_CTRL_UPDATE_ADDR(i64) #1

declare dso_local i32 @ocelot_write(%struct.ocelot*, i32, i32) #1

declare dso_local i32 @readx_poll_timeout(i32, %struct.ocelot*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
