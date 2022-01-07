; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_add_lb_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_add_lb_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.hlist_head* }
%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i64* }
%struct.qlcnic_filter = type { i64, i32, i32, i64* }

@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@QLCNIC_READD_AGE = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_DEL = common dso_local global i64 0, align 8
@QLCNIC_MAC_DEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.sk_buff*, i32, i32)* @qlcnic_add_lb_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_add_lb_filter(%struct.qlcnic_adapter* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca %struct.qlcnic_filter*, align 8
  %11 = alloca %struct.qlcnic_filter*, align 8
  %12 = alloca %struct.hlist_head*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ethhdr*
  store %struct.ethhdr* %21, %struct.ethhdr** %9, align 8
  store i64 0, i64* %14, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %23 = call i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 65535
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %31 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i64* %14, i64* %32, i32 %33)
  %35 = load i64, i64* %14, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @qlcnic_mac_hash(i64 %35, i32 %36)
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %37, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %15, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %122

47:                                               ; preds = %29
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %192

58:                                               ; preds = %47
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load %struct.hlist_head*, %struct.hlist_head** %61, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %62, i64 %63
  store %struct.hlist_head* %64, %struct.hlist_head** %12, align 8
  %65 = load %struct.hlist_head*, %struct.hlist_head** %12, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call %struct.qlcnic_filter* @qlcnic_find_mac_filter(%struct.hlist_head* %65, i64* %14, i32 %66)
  store %struct.qlcnic_filter* %67, %struct.qlcnic_filter** %11, align 8
  %68 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %11, align 8
  %69 = icmp ne %struct.qlcnic_filter* %68, null
  br i1 %69, label %70, label %88

70:                                               ; preds = %58
  %71 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %11, align 8
  %72 = getelementptr inbounds %struct.qlcnic_filter, %struct.qlcnic_filter* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %13, align 8
  %74 = load i8*, i8** @jiffies, align 8
  %75 = load i64, i64* @QLCNIC_READD_AGE, align 8
  %76 = load i64, i64* @HZ, align 8
  %77 = mul i64 %75, %76
  %78 = load i64, i64* %13, align 8
  %79 = add i64 %77, %78
  %80 = call i64 @time_after(i8* %74, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %70
  %83 = load i8*, i8** @jiffies, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %11, align 8
  %86 = getelementptr inbounds %struct.qlcnic_filter, %struct.qlcnic_filter* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %70
  br label %192

88:                                               ; preds = %58
  %89 = load i32, i32* @GFP_ATOMIC, align 4
  %90 = call %struct.qlcnic_filter* @kzalloc(i32 24, i32 %89)
  store %struct.qlcnic_filter* %90, %struct.qlcnic_filter** %10, align 8
  %91 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %10, align 8
  %92 = icmp ne %struct.qlcnic_filter* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %192

94:                                               ; preds = %88
  %95 = load i8*, i8** @jiffies, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %10, align 8
  %98 = getelementptr inbounds %struct.qlcnic_filter, %struct.qlcnic_filter* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %10, align 8
  %100 = getelementptr inbounds %struct.qlcnic_filter, %struct.qlcnic_filter* %99, i32 0, i32 3
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* @ETH_ALEN, align 4
  %103 = call i32 @memcpy(i64* %101, i64* %14, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %10, align 8
  %106 = getelementptr inbounds %struct.qlcnic_filter, %struct.qlcnic_filter* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %108 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %107, i32 0, i32 0
  %109 = call i32 @spin_lock(i32* %108)
  %110 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %10, align 8
  %111 = getelementptr inbounds %struct.qlcnic_filter, %struct.qlcnic_filter* %110, i32 0, i32 2
  %112 = load %struct.hlist_head*, %struct.hlist_head** %12, align 8
  %113 = call i32 @hlist_add_head(i32* %111, %struct.hlist_head* %112)
  %114 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %115 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %120 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock(i32* %120)
  br label %192

122:                                              ; preds = %29
  %123 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %124 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load %struct.hlist_head*, %struct.hlist_head** %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %126, i64 %127
  store %struct.hlist_head* %128, %struct.hlist_head** %12, align 8
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %130 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %129, i32 0, i32 2
  %131 = call i32 @spin_lock(i32* %130)
  %132 = load %struct.hlist_head*, %struct.hlist_head** %12, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call %struct.qlcnic_filter* @qlcnic_find_mac_filter(%struct.hlist_head* %132, i64* %14, i32 %133)
  store %struct.qlcnic_filter* %134, %struct.qlcnic_filter** %11, align 8
  %135 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %11, align 8
  %136 = icmp ne %struct.qlcnic_filter* %135, null
  br i1 %136, label %137, label %165

137:                                              ; preds = %122
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i64, i64* @QLCNIC_MAC_VLAN_DEL, align 8
  br label %144

142:                                              ; preds = %137
  %143 = load i64, i64* @QLCNIC_MAC_DEL, align 8
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i64 [ %141, %140 ], [ %143, %142 ]
  store i64 %145, i64* %16, align 8
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i64, i64* %16, align 8
  %149 = call i32 @qlcnic_sre_macaddr_change(%struct.qlcnic_adapter* %146, i64* %14, i32 %147, i64 %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %144
  %153 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %11, align 8
  %154 = getelementptr inbounds %struct.qlcnic_filter, %struct.qlcnic_filter* %153, i32 0, i32 2
  %155 = call i32 @hlist_del(i32* %154)
  %156 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %157 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %152, %144
  %162 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %163 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %162, i32 0, i32 2
  %164 = call i32 @spin_unlock(i32* %163)
  br label %192

165:                                              ; preds = %122
  %166 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %167 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %166, i32 0, i32 2
  %168 = call i32 @spin_unlock(i32* %167)
  %169 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %170 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load %struct.hlist_head*, %struct.hlist_head** %171, align 8
  %173 = load i64, i64* %15, align 8
  %174 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %172, i64 %173
  store %struct.hlist_head* %174, %struct.hlist_head** %12, align 8
  %175 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %176 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %175, i32 0, i32 0
  %177 = call i32 @spin_lock(i32* %176)
  %178 = load %struct.hlist_head*, %struct.hlist_head** %12, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call %struct.qlcnic_filter* @qlcnic_find_mac_filter(%struct.hlist_head* %178, i64* %14, i32 %179)
  store %struct.qlcnic_filter* %180, %struct.qlcnic_filter** %11, align 8
  %181 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %11, align 8
  %182 = icmp ne %struct.qlcnic_filter* %181, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %165
  %184 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %185 = load %struct.qlcnic_filter*, %struct.qlcnic_filter** %11, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @qlcnic_delete_rx_list_mac(%struct.qlcnic_adapter* %184, %struct.qlcnic_filter* %185, i64* %14, i32 %186)
  br label %188

188:                                              ; preds = %183, %165
  %189 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %190 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %189, i32 0, i32 0
  %191 = call i32 @spin_unlock(i32* %190)
  br label %192

192:                                              ; preds = %57, %87, %93, %161, %188, %94
  ret void
}

declare dso_local i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @qlcnic_mac_hash(i64, i32) #1

declare dso_local %struct.qlcnic_filter* @qlcnic_find_mac_filter(%struct.hlist_head*, i64*, i32) #1

declare dso_local i64 @time_after(i8*, i64) #1

declare dso_local %struct.qlcnic_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qlcnic_sre_macaddr_change(%struct.qlcnic_adapter*, i64*, i32, i64) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @qlcnic_delete_rx_list_mac(%struct.qlcnic_adapter*, %struct.qlcnic_filter*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
