; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_flush_dyn_mac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_flush_dyn_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, %struct.ksz_port* }
%struct.ksz_port = type { i32 }

@TOTAL_PORT_NUM = common dso_local global i32 0, align 4
@P_STP_CTRL = common dso_local global i32 0, align 4
@PORT_LEARN_DISABLE = common dso_local global i32 0, align 4
@S_FLUSH_TABLE_CTRL = common dso_local global i32 0, align 4
@SW_FLUSH_DYN_MAC_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32)* @ksz8795_flush_dyn_mac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_flush_dyn_mac_table(%struct.ksz_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ksz_port*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @TOTAL_PORT_NUM, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TOTAL_PORT_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  br label %26

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %23 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %24 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %71, %26
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %28
  %33 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %34 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %33, i32 0, i32 1
  %35 = load %struct.ksz_port*, %struct.ksz_port** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %35, i64 %37
  store %struct.ksz_port* %38, %struct.ksz_port** %10, align 8
  %39 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %40 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %71

44:                                               ; preds = %32
  %45 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @P_STP_CTRL, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %14, i64 %49
  %51 = call i32 @ksz_pread8(%struct.ksz_device* %45, i32 %46, i32 %47, i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %14, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %44
  %60 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @P_STP_CTRL, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %14, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @ksz_pwrite8(%struct.ksz_device* %60, i32 %61, i32 %62, i32 %68)
  br label %70

70:                                               ; preds = %59, %44
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %28

74:                                               ; preds = %28
  %75 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %76 = load i32, i32* @S_FLUSH_TABLE_CTRL, align 4
  %77 = load i32, i32* @SW_FLUSH_DYN_MAC_TABLE, align 4
  %78 = call i32 @ksz_cfg(%struct.ksz_device* %75, i32 %76, i32 %77, i32 1)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %114, %74
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %117

84:                                               ; preds = %80
  %85 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %86 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %85, i32 0, i32 1
  %87 = load %struct.ksz_port*, %struct.ksz_port** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %87, i64 %89
  store %struct.ksz_port* %90, %struct.ksz_port** %10, align 8
  %91 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %92 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %84
  br label %114

96:                                               ; preds = %84
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %14, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %96
  %105 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @P_STP_CTRL, align 4
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %14, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ksz_pwrite8(%struct.ksz_device* %105, i32 %106, i32 %107, i32 %111)
  br label %113

113:                                              ; preds = %104, %96
  br label %114

114:                                              ; preds = %113, %95
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %80

117:                                              ; preds = %80
  %118 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %118)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ksz_pread8(%struct.ksz_device*, i32, i32, i32*) #2

declare dso_local i32 @ksz_pwrite8(%struct.ksz_device*, i32, i32, i32) #2

declare dso_local i32 @ksz_cfg(%struct.ksz_device*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
