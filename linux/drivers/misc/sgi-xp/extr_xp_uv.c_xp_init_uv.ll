; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp_uv.c_xp_init_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp_uv.c_xp_init_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XP_MAX_NPARTITIONS_UV = common dso_local global i32 0, align 4
@xp_max_npartitions = common dso_local global i32 0, align 4
@xp_pa_uv = common dso_local global i32 0, align 4
@xp_pa = common dso_local global i32 0, align 4
@xp_socket_pa_uv = common dso_local global i32 0, align 4
@xp_socket_pa = common dso_local global i32 0, align 4
@xp_remote_memcpy_uv = common dso_local global i32 0, align 4
@xp_remote_memcpy = common dso_local global i32 0, align 4
@xp_cpu_to_nasid_uv = common dso_local global i32 0, align 4
@xp_cpu_to_nasid = common dso_local global i32 0, align 4
@xp_expand_memprotect_uv = common dso_local global i32 0, align 4
@xp_expand_memprotect = common dso_local global i32 0, align 4
@xp_restrict_memprotect_uv = common dso_local global i32 0, align 4
@xp_restrict_memprotect = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@sn_partition_id = common dso_local global i32 0, align 4
@sn_region_size = common dso_local global i32 0, align 4
@xp_partition_id = common dso_local global i32 0, align 4
@xp_region_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xp_init_uv() #0 {
  %1 = call i32 (...) @is_uv()
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @BUG_ON(i32 %4)
  %6 = load i32, i32* @XP_MAX_NPARTITIONS_UV, align 4
  store i32 %6, i32* @xp_max_npartitions, align 4
  %7 = load i32, i32* @xp_pa_uv, align 4
  store i32 %7, i32* @xp_pa, align 4
  %8 = load i32, i32* @xp_socket_pa_uv, align 4
  store i32 %8, i32* @xp_socket_pa, align 4
  %9 = load i32, i32* @xp_remote_memcpy_uv, align 4
  store i32 %9, i32* @xp_remote_memcpy, align 4
  %10 = load i32, i32* @xp_cpu_to_nasid_uv, align 4
  store i32 %10, i32* @xp_cpu_to_nasid, align 4
  %11 = load i32, i32* @xp_expand_memprotect_uv, align 4
  store i32 %11, i32* @xp_expand_memprotect, align 4
  %12 = load i32, i32* @xp_restrict_memprotect_uv, align 4
  store i32 %12, i32* @xp_restrict_memprotect, align 4
  %13 = load i32, i32* @xpSuccess, align 4
  ret i32 %13
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_uv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
