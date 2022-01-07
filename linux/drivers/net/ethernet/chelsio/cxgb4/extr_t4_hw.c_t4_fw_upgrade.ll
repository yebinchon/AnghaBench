; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fw_upgrade.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fw_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXGB4_FW_OK = common dso_local global i32 0, align 4
@FW_HDR_FLAGS_RESET_HALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_fw_upgrade(%struct.adapter* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fw_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = bitcast i32* %15 to %struct.fw_hdr*
  store %struct.fw_hdr* %16, %struct.fw_hdr** %12, align 8
  %17 = load %struct.adapter*, %struct.adapter** %7, align 8
  %18 = load %struct.fw_hdr*, %struct.fw_hdr** %12, align 8
  %19 = call i32 @t4_fw_matches_chip(%struct.adapter* %17, %struct.fw_hdr* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %73

24:                                               ; preds = %5
  %25 = load i32, i32* @CXGB4_FW_OK, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.adapter*, %struct.adapter** %7, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.adapter*, %struct.adapter** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @t4_fw_halt(%struct.adapter* %31, i32 %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %66

41:                                               ; preds = %37, %24
  %42 = load %struct.adapter*, %struct.adapter** %7, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @t4_load_fw(%struct.adapter* %42, i32* %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %66

49:                                               ; preds = %41
  %50 = load %struct.adapter*, %struct.adapter** %7, align 8
  %51 = call i32 @t4_load_cfg(%struct.adapter* %50, i32* null, i32 0)
  %52 = load %struct.fw_hdr*, %struct.fw_hdr** %12, align 8
  %53 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = load i32, i32* @FW_HDR_FLAGS_RESET_HALT, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load %struct.adapter*, %struct.adapter** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @t4_fw_restart(%struct.adapter* %60, i32 %61, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.adapter*, %struct.adapter** %7, align 8
  %65 = call i32 @t4_init_devlog_params(%struct.adapter* %64)
  br label %66

66:                                               ; preds = %49, %48, %40
  %67 = load i32, i32* @CXGB4_FW_OK, align 4
  %68 = load %struct.adapter*, %struct.adapter** %7, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %66, %21
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @t4_fw_matches_chip(%struct.adapter*, %struct.fw_hdr*) #1

declare dso_local i32 @t4_fw_halt(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_load_fw(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @t4_load_cfg(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @t4_fw_restart(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_init_devlog_params(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
