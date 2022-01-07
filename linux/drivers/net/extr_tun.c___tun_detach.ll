; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c___tun_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c___tun_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_file = type { i64, i32, i32, i32, i64, i32* }
%struct.tun_struct = type { i64, i64, i32, %struct.TYPE_3__*, i32** }
%struct.TYPE_3__ = type { i64 }

@IFF_PERSIST = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@tun_ptr_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_file*, i32)* @__tun_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tun_detach(%struct.tun_file* %0, i32 %1) #0 {
  %3 = alloca %struct.tun_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tun_file*, align 8
  %6 = alloca %struct.tun_struct*, align 8
  %7 = alloca i64, align 8
  store %struct.tun_file* %0, %struct.tun_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %9 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = call i8* @rtnl_dereference(i32* %10)
  %12 = bitcast i8* %11 to %struct.tun_struct*
  store %struct.tun_struct* %12, %struct.tun_struct** %6, align 8
  %13 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %14 = icmp ne %struct.tun_struct* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %20 = call i32 @tun_napi_disable(%struct.tun_file* %19)
  %21 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %22 = call i32 @tun_napi_del(%struct.tun_file* %21)
  br label %23

23:                                               ; preds = %18, %15, %2
  %24 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %25 = icmp ne %struct.tun_struct* %24, null
  br i1 %25, label %26, label %110

26:                                               ; preds = %23
  %27 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %28 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %110, label %31

31:                                               ; preds = %26
  %32 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %33 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %37 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %43 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %42, i32 0, i32 4
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %49 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %48, i32 0, i32 4
  %50 = load i32**, i32*** %49, align 8
  %51 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %52 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i32*, i32** %50, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @rcu_assign_pointer(i32* %47, i32* %56)
  %58 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %59 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %58, i32 0, i32 4
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = call i8* @rtnl_dereference(i32* %63)
  %65 = bitcast i8* %64 to %struct.tun_file*
  store %struct.tun_file* %65, %struct.tun_file** %5, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %68 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %70 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %69, i32 0, i32 4
  %71 = load i32**, i32*** %70, align 8
  %72 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %73 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds i32*, i32** %71, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @rcu_assign_pointer(i32* %77, i32* null)
  %79 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %80 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %80, align 8
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %31
  %86 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %87 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @RCU_INIT_POINTER(i32* %88, i32* null)
  %90 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %91 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %90, i32 0, i32 1
  %92 = call i32 @sock_put(i32* %91)
  br label %97

93:                                               ; preds = %31
  %94 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %95 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %96 = call i32 @tun_disable_queue(%struct.tun_struct* %94, %struct.tun_file* %95)
  br label %97

97:                                               ; preds = %93, %85
  %98 = call i32 (...) @synchronize_net()
  %99 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %100 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %101 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  %104 = trunc i64 %103 to i32
  %105 = call i32 @tun_flow_delete_by_queue(%struct.tun_struct* %99, i32 %104)
  %106 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %107 = call i32 @tun_queue_purge(%struct.tun_file* %106)
  %108 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %109 = call i32 @tun_set_real_num_queues(%struct.tun_struct* %108)
  br label %125

110:                                              ; preds = %26, %23
  %111 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %112 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %120 = call %struct.tun_struct* @tun_enable_queue(%struct.tun_file* %119)
  store %struct.tun_struct* %120, %struct.tun_struct** %6, align 8
  %121 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %122 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %121, i32 0, i32 1
  %123 = call i32 @sock_put(i32* %122)
  br label %124

124:                                              ; preds = %118, %115, %110
  br label %125

125:                                              ; preds = %124, %97
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %181

128:                                              ; preds = %125
  %129 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %130 = icmp ne %struct.tun_struct* %129, null
  br i1 %130, label %131, label %166

131:                                              ; preds = %128
  %132 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %133 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %131
  %137 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %138 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %166

141:                                              ; preds = %136
  %142 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %143 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %142, i32 0, i32 3
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = call i32 @netif_carrier_off(%struct.TYPE_3__* %144)
  %146 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %147 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @IFF_PERSIST, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %165, label %152

152:                                              ; preds = %141
  %153 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %154 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %153, i32 0, i32 3
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @NETREG_REGISTERED, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %152
  %161 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %162 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %161, i32 0, i32 3
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = call i32 @unregister_netdevice(%struct.TYPE_3__* %163)
  br label %165

165:                                              ; preds = %160, %152, %141
  br label %166

166:                                              ; preds = %165, %136, %131, %128
  %167 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %168 = icmp ne %struct.tun_struct* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %171 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %170, i32 0, i32 3
  %172 = call i32 @xdp_rxq_info_unreg(i32* %171)
  br label %173

173:                                              ; preds = %169, %166
  %174 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %175 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %174, i32 0, i32 2
  %176 = load i32, i32* @tun_ptr_free, align 4
  %177 = call i32 @ptr_ring_cleanup(i32* %175, i32 %176)
  %178 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %179 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %178, i32 0, i32 1
  %180 = call i32 @sock_put(i32* %179)
  br label %181

181:                                              ; preds = %173, %125
  ret void
}

declare dso_local i8* @rtnl_dereference(i32*) #1

declare dso_local i32 @tun_napi_disable(%struct.tun_file*) #1

declare dso_local i32 @tun_napi_del(%struct.tun_file*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32*, i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32*, i32*) #1

declare dso_local i32 @sock_put(i32*) #1

declare dso_local i32 @tun_disable_queue(%struct.tun_struct*, %struct.tun_file*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @tun_flow_delete_by_queue(%struct.tun_struct*, i32) #1

declare dso_local i32 @tun_queue_purge(%struct.tun_file*) #1

declare dso_local i32 @tun_set_real_num_queues(%struct.tun_struct*) #1

declare dso_local %struct.tun_struct* @tun_enable_queue(%struct.tun_file*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_3__*) #1

declare dso_local i32 @unregister_netdevice(%struct.TYPE_3__*) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @ptr_ring_cleanup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
