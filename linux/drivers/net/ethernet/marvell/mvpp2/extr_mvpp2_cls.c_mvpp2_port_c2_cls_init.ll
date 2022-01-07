; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_port_c2_cls_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_port_c2_cls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32 }
%struct.mvpp2_cls_c2_entry = type { i32, i32*, i32, i32*, i32 }

@MVPP2_CLS_LU_TYPE_MASK = common dso_local global i32 0, align 4
@MVPP22_CLS_LU_TYPE_ALL = common dso_local global i32 0, align 4
@MVPP22_C2_UPD_LOCK = common dso_local global i32 0, align 4
@MVPP22_C2_FWD_SW_LOCK = common dso_local global i32 0, align 4
@MVPP22_C2_UPD = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR0_QHIGH_MASK = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR0_QLOW_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_port_c2_cls_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_port_c2_cls_init(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca %struct.mvpp2_cls_c2_entry, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %7 = call i32 @memset(%struct.mvpp2_cls_c2_entry* %3, i32 0, i32 40)
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MVPP22_CLS_C2_RSS_ENTRY(i32 %10)
  %12 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 4
  store i32 %11, i32* %12, align 8
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %14 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MVPP22_CLS_C2_PORT_ID(i32 %17)
  %19 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @MVPP22_CLS_C2_PORT_ID(i32 %22)
  %24 = call i32 @MVPP22_CLS_C2_TCAM_EN(i32 %23)
  %25 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @MVPP2_CLS_LU_TYPE_MASK, align 4
  %31 = call i32 @MVPP22_CLS_C2_LU_TYPE(i32 %30)
  %32 = call i32 @MVPP22_CLS_C2_TCAM_EN(i32 %31)
  %33 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @MVPP22_CLS_LU_TYPE_ALL, align 4
  %39 = call i32 @MVPP22_CLS_C2_LU_TYPE(i32 %38)
  %40 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @MVPP22_C2_UPD_LOCK, align 4
  %46 = call i32 @MVPP22_CLS_C2_ACT_RSS_EN(i32 %45)
  %47 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @MVPP22_C2_FWD_SW_LOCK, align 4
  %49 = call i32 @MVPP22_CLS_C2_ACT_FWD(i32 %48)
  %50 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @MVPP22_C2_UPD, align 4
  %54 = call i32 @MVPP22_CLS_C2_ACT_QHIGH(i32 %53)
  %55 = load i32, i32* @MVPP22_C2_UPD, align 4
  %56 = call i32 @MVPP22_CLS_C2_ACT_QLOW(i32 %55)
  %57 = or i32 %54, %56
  %58 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 8
  %61 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %62 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 3
  %65 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QHIGH_MASK, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %4, align 4
  %67 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %68 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QLOW_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @MVPP22_CLS_C2_ATTR0_QHIGH(i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @MVPP22_CLS_C2_ATTR0_QLOW(i32 %74)
  %76 = or i32 %73, %75
  %77 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %76, i32* %79, align 4
  %80 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %82 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mvpp2_cls_c2_write(i32 %83, %struct.mvpp2_cls_c2_entry* %3)
  ret void
}

declare dso_local i32 @memset(%struct.mvpp2_cls_c2_entry*, i32, i32) #1

declare dso_local i32 @MVPP22_CLS_C2_RSS_ENTRY(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_PORT_ID(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_TCAM_EN(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_LU_TYPE(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ACT_RSS_EN(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ACT_FWD(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ACT_QHIGH(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ACT_QLOW(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ATTR0_QHIGH(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ATTR0_QLOW(i32) #1

declare dso_local i32 @mvpp2_cls_c2_write(i32, %struct.mvpp2_cls_c2_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
