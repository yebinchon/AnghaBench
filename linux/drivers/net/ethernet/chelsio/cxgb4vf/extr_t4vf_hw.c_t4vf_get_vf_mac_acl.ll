; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_vf_mac_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_vf_mac_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_acl_mac_cmd = type { i32, i32, i32, i32, i32, i8*, i8* }

@FW_ACL_MAC_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_get_vf_mac_acl(%struct.adapter* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fw_acl_mac_cmd, align 8
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32 @memset(%struct.fw_acl_mac_cmd* %10, i32 0, i32 40)
  %13 = load i32, i32* @FW_ACL_MAC_CMD, align 4
  %14 = call i32 @FW_CMD_OP_V(i32 %13)
  %15 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FW_CMD_READ_F, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = getelementptr inbounds %struct.fw_acl_mac_cmd, %struct.fw_acl_mac_cmd* %10, i32 0, i32 6
  store i8* %19, i8** %20, align 8
  %21 = call i64 @FW_LEN16(%struct.fw_acl_mac_cmd* byval(%struct.fw_acl_mac_cmd) align 8 %10)
  %22 = trunc i64 %21 to i32
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.fw_acl_mac_cmd, %struct.fw_acl_mac_cmd* %10, i32 0, i32 5
  store i8* %23, i8** %24, align 8
  %25 = load %struct.adapter*, %struct.adapter** %6, align 8
  %26 = call i32 @t4vf_wr_mbox(%struct.adapter* %25, %struct.fw_acl_mac_cmd* %10, i32 40, %struct.fw_acl_mac_cmd* %10)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %65

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.fw_acl_mac_cmd, %struct.fw_acl_mac_cmd* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.fw_acl_mac_cmd, %struct.fw_acl_mac_cmd* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %63 [
    i32 3, label %43
    i32 2, label %48
    i32 1, label %53
    i32 0, label %58
  ]

43:                                               ; preds = %41
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds %struct.fw_acl_mac_cmd, %struct.fw_acl_mac_cmd* %10, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i32* %44, i32 %46, i32 4)
  br label %63

48:                                               ; preds = %41
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds %struct.fw_acl_mac_cmd, %struct.fw_acl_mac_cmd* %10, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32* %49, i32 %51, i32 4)
  br label %63

53:                                               ; preds = %41
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds %struct.fw_acl_mac_cmd, %struct.fw_acl_mac_cmd* %10, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(i32* %54, i32 %56, i32 4)
  br label %63

58:                                               ; preds = %41
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds %struct.fw_acl_mac_cmd, %struct.fw_acl_mac_cmd* %10, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32* %59, i32 %61, i32 4)
  br label %63

63:                                               ; preds = %41, %58, %53, %48, %43
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %29
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @memset(%struct.fw_acl_mac_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i64 @FW_LEN16(%struct.fw_acl_mac_cmd* byval(%struct.fw_acl_mac_cmd) align 8) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_acl_mac_cmd*, i32, %struct.fw_acl_mac_cmd*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
