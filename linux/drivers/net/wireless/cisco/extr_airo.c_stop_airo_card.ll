; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_stop_airo_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_stop_airo_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.airo_info* }
%struct.airo_info = type { i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.sk_buff = type { i32 }

@FLAG_RADIO_DOWN = common dso_local global i32 0, align 4
@FLAG_REGISTERED = common dso_local global i32 0, align 4
@FLAG_MPI = common dso_local global i32 0, align 4
@PCI_SHARED_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_airo_card(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  store %struct.airo_info* %9, %struct.airo_info** %5, align 8
  %10 = load i32, i32* @FLAG_RADIO_DOWN, align 4
  %11 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %12 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %11, i32 0, i32 6
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %15 = call i32 @disable_MAC(%struct.airo_info* %14, i32 1)
  %16 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %17 = call i32 @disable_interrupts(%struct.airo_info* %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %20 = call i32 @takedown_proc_entry(%struct.net_device* %18, %struct.airo_info* %19)
  %21 = load i32, i32* @FLAG_REGISTERED, align 4
  %22 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %23 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %22, i32 0, i32 6
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @unregister_netdev(%struct.net_device* %27)
  %29 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %30 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %29, i32 0, i32 11
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %35 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %34, i32 0, i32 11
  %36 = load %struct.net_device*, %struct.net_device** %35, align 8
  %37 = call i32 @unregister_netdev(%struct.net_device* %36)
  %38 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %39 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %38, i32 0, i32 11
  %40 = load %struct.net_device*, %struct.net_device** %39, align 8
  %41 = call i32 @free_netdev(%struct.net_device* %40)
  %42 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %43 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %42, i32 0, i32 11
  store %struct.net_device* null, %struct.net_device** %43, align 8
  br label %44

44:                                               ; preds = %33, %26
  %45 = load i32, i32* @FLAG_REGISTERED, align 4
  %46 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %47 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %46, i32 0, i32 6
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %2
  %50 = load i32, i32* @FLAG_MPI, align 4
  %51 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %52 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %51, i32 0, i32 6
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %57 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %56, i32 0, i32 10
  %58 = call i32 @skb_queue_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %61

61:                                               ; preds = %66, %60
  %62 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %63 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %62, i32 0, i32 10
  %64 = call %struct.sk_buff* @skb_dequeue(i32* %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %6, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @dev_kfree_skb(%struct.sk_buff* %67)
  br label %61

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %55, %49
  %71 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %72 = call i32 @airo_networks_free(%struct.airo_info* %71)
  %73 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %74 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @kfree(i32 %75)
  %77 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %78 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @kfree(i32 %79)
  %81 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %82 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @kfree(i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %140

87:                                               ; preds = %70
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @release_region(i32 %90, i32 64)
  %92 = load i32, i32* @FLAG_MPI, align 4
  %93 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %94 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %93, i32 0, i32 6
  %95 = call i64 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %87
  %98 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %99 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %104 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @mpi_unmap_card(i64 %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %109 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %114 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @iounmap(i64 %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %119 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %124 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @iounmap(i64 %125)
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %129 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* @PCI_SHARED_LEN, align 4
  %132 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %133 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %136 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @pci_free_consistent(i64 %130, i32 %131, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %127, %87
  br label %140

140:                                              ; preds = %139, %70
  %141 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %142 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @crypto_free_sync_skcipher(i32 %143)
  %145 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %146 = call i32 @del_airo_dev(%struct.airo_info* %145)
  %147 = load %struct.net_device*, %struct.net_device** %3, align 8
  %148 = call i32 @free_netdev(%struct.net_device* %147)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @disable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @disable_interrupts(%struct.airo_info*) #1

declare dso_local i32 @takedown_proc_entry(%struct.net_device*, %struct.airo_info*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @airo_networks_free(%struct.airo_info*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @mpi_unmap_card(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_free_consistent(i64, i32, i32, i32) #1

declare dso_local i32 @crypto_free_sync_skcipher(i32) #1

declare dso_local i32 @del_airo_dev(%struct.airo_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
