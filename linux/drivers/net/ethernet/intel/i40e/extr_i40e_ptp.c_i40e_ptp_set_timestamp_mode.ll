; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_set_timestamp_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_set_timestamp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, i32, i32, i64, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@I40E_PRTTSYN_CTL1_TSYNTYPE_V1 = common dso_local global i32 0, align 4
@I40E_HW_PTP_L4_CAPABLE = common dso_local global i32 0, align 4
@I40E_PRTTSYN_CTL1_V1MESSTYPE0_MASK = common dso_local global i32 0, align 4
@I40E_PRTTSYN_CTL1_UDP_ENA_MASK = common dso_local global i32 0, align 4
@I40E_PRTTSYN_CTL1_V2MESSTYPE0_MASK = common dso_local global i32 0, align 4
@I40E_PRTTSYN_CTL1_TSYNTYPE_V2 = common dso_local global i32 0, align 4
@I40E_PRTTSYN_STAT_0 = common dso_local global i32 0, align 4
@I40E_PRTTSYN_TXTIME_H = common dso_local global i32 0, align 4
@I40E_PRTTSYN_CTL0 = common dso_local global i32 0, align 4
@I40E_PRTTSYN_CTL0_TXTIME_INT_ENA_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_TIMESYNC_MASK = common dso_local global i32 0, align 4
@I40E_PRTTSYN_CTL1 = common dso_local global i32 0, align 4
@I40E_PRTTSYN_CTL1_TSYNENA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, %struct.hwtstamp_config*)* @i40e_ptp_set_timestamp_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_ptp_set_timestamp_mode(%struct.i40e_pf* %0, %struct.hwtstamp_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.hwtstamp_config*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store %struct.hwtstamp_config* %1, %struct.hwtstamp_config** %5, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 5
  store %struct.i40e_hw* %10, %struct.i40e_hw** %6, align 8
  %11 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %12 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %178

18:                                               ; preds = %2
  %19 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %20 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %28 [
    i32 129, label %22
    i32 128, label %25
  ]

22:                                               ; preds = %18
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %31

25:                                               ; preds = %18
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %178

31:                                               ; preds = %25, %22
  %32 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %33 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %93 [
    i32 143, label %35
    i32 139, label %39
    i32 141, label %39
    i32 140, label %39
    i32 137, label %59
    i32 132, label %59
    i32 130, label %59
    i32 131, label %59
    i32 138, label %59
    i32 133, label %59
    i32 135, label %70
    i32 134, label %70
    i32 136, label %70
    i32 142, label %92
    i32 144, label %92
  ]

35:                                               ; preds = %31
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %37 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @I40E_PRTTSYN_CTL1_TSYNTYPE_V1, align 4
  store i32 %38, i32* %7, align 4
  br label %96

39:                                               ; preds = %31, %31, %31
  %40 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %41 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @I40E_HW_PTP_L4_CAPABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ERANGE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %178

49:                                               ; preds = %39
  %50 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %51 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @I40E_PRTTSYN_CTL1_V1MESSTYPE0_MASK, align 4
  %53 = load i32, i32* @I40E_PRTTSYN_CTL1_TSYNTYPE_V1, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @I40E_PRTTSYN_CTL1_UDP_ENA_MASK, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %58 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %57, i32 0, i32 1
  store i32 140, i32* %58, align 4
  br label %96

59:                                               ; preds = %31, %31, %31, %31, %31, %31
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @I40E_HW_PTP_L4_CAPABLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @ERANGE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %178

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %31, %31, %31, %69
  %71 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %72 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* @I40E_PRTTSYN_CTL1_V2MESSTYPE0_MASK, align 4
  %74 = load i32, i32* @I40E_PRTTSYN_CTL1_TSYNTYPE_V2, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %7, align 4
  %76 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %77 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @I40E_HW_PTP_L4_CAPABLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load i32, i32* @I40E_PRTTSYN_CTL1_UDP_ENA_MASK, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %87 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %86, i32 0, i32 1
  store i32 137, i32* %87, align 4
  br label %91

88:                                               ; preds = %70
  %89 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %90 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %89, i32 0, i32 1
  store i32 135, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %82
  br label %96

92:                                               ; preds = %31, %31
  br label %93

93:                                               ; preds = %31, %92
  %94 = load i32, i32* @ERANGE, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %178

96:                                               ; preds = %91, %49, %35
  %97 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %98 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %97, i32 0, i32 3
  %99 = call i32 @spin_lock_bh(i32* %98)
  %100 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %101 = load i32, i32* @I40E_PRTTSYN_STAT_0, align 4
  %102 = call i32 @rd32(%struct.i40e_hw* %100, i32 %101)
  %103 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %104 = load i32, i32* @I40E_PRTTSYN_TXTIME_H, align 4
  %105 = call i32 @rd32(%struct.i40e_hw* %103, i32 %104)
  %106 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %107 = call i32 @I40E_PRTTSYN_RXTIME_H(i32 0)
  %108 = call i32 @rd32(%struct.i40e_hw* %106, i32 %107)
  %109 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %110 = call i32 @I40E_PRTTSYN_RXTIME_H(i32 1)
  %111 = call i32 @rd32(%struct.i40e_hw* %109, i32 %110)
  %112 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %113 = call i32 @I40E_PRTTSYN_RXTIME_H(i32 2)
  %114 = call i32 @rd32(%struct.i40e_hw* %112, i32 %113)
  %115 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %116 = call i32 @I40E_PRTTSYN_RXTIME_H(i32 3)
  %117 = call i32 @rd32(%struct.i40e_hw* %115, i32 %116)
  %118 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %119 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %118, i32 0, i32 4
  store i64 0, i64* %119, align 8
  %120 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %121 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %120, i32 0, i32 3
  %122 = call i32 @spin_unlock_bh(i32* %121)
  %123 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %124 = load i32, i32* @I40E_PRTTSYN_CTL0, align 4
  %125 = call i32 @rd32(%struct.i40e_hw* %123, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %127 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %96
  %131 = load i32, i32* @I40E_PRTTSYN_CTL0_TXTIME_INT_ENA_MASK, align 4
  %132 = load i32, i32* %8, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %8, align 4
  br label %139

134:                                              ; preds = %96
  %135 = load i32, i32* @I40E_PRTTSYN_CTL0_TXTIME_INT_ENA_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %134, %130
  %140 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %141 = load i32, i32* @I40E_PRTTSYN_CTL0, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @wr32(%struct.i40e_hw* %140, i32 %141, i32 %142)
  %144 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %145 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %146 = call i32 @rd32(%struct.i40e_hw* %144, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %148 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %139
  %152 = load i32, i32* @I40E_PFINT_ICR0_ENA_TIMESYNC_MASK, align 4
  %153 = load i32, i32* %8, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %8, align 4
  br label %160

155:                                              ; preds = %139
  %156 = load i32, i32* @I40E_PFINT_ICR0_ENA_TIMESYNC_MASK, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %8, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %155, %151
  %161 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %162 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @wr32(%struct.i40e_hw* %161, i32 %162, i32 %163)
  %165 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %166 = load i32, i32* @I40E_PRTTSYN_CTL1, align 4
  %167 = call i32 @rd32(%struct.i40e_hw* %165, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* @I40E_PRTTSYN_CTL1_TSYNENA_MASK, align 4
  %169 = load i32, i32* %8, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %8, align 4
  %174 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %175 = load i32, i32* @I40E_PRTTSYN_CTL1, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @wr32(%struct.i40e_hw* %174, i32 %175, i32 %176)
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %160, %93, %66, %46, %28, %15
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_PRTTSYN_RXTIME_H(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
