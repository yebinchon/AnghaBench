; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_perm_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_perm_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_perm_mac(%struct.be_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @eth_zero_addr(i32* %7)
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = call i64 @BEx_chip(%struct.be_adapter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %14 = call i64 @be_physfn(%struct.be_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @be_cmd_mac_addr_query(%struct.be_adapter* %17, i32* %18, i32 1, i32 0, i32 0)
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %12
  %21 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be_cmd_mac_addr_query(%struct.be_adapter* %21, i32* %22, i32 0, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %16
  br label %35

28:                                               ; preds = %2
  %29 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be_cmd_get_mac_from_list(%struct.be_adapter* %29, i32* %30, i32* %6, i32* null, i32 %33, i32 0)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %27
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @eth_zero_addr(i32*) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_mac_addr_query(%struct.be_adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_get_mac_from_list(%struct.be_adapter*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
