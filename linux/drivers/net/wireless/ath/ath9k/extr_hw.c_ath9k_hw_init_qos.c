
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_MIC_QOS_CONTROL ;
 int AR_MIC_QOS_SELECT ;
 int AR_QOS_NO_ACK ;
 int AR_QOS_NO_ACK_BIT_OFF ;
 int AR_QOS_NO_ACK_BYTE_OFF ;
 int AR_QOS_NO_ACK_TWO_BIT ;
 int AR_TXOP_0_3 ;
 int AR_TXOP_12_15 ;
 int AR_TXOP_4_7 ;
 int AR_TXOP_8_11 ;
 int AR_TXOP_X ;
 int AR_TXOP_X_VAL ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int SM (int,int ) ;

__attribute__((used)) static void ath9k_hw_init_qos(struct ath_hw *ah)
{
 ENABLE_REGWRITE_BUFFER(ah);

 REG_WRITE(ah, AR_MIC_QOS_CONTROL, 0x100aa);
 REG_WRITE(ah, AR_MIC_QOS_SELECT, 0x3210);

 REG_WRITE(ah, AR_QOS_NO_ACK,
    SM(2, AR_QOS_NO_ACK_TWO_BIT) |
    SM(5, AR_QOS_NO_ACK_BIT_OFF) |
    SM(0, AR_QOS_NO_ACK_BYTE_OFF));

 REG_WRITE(ah, AR_TXOP_X, AR_TXOP_X_VAL);
 REG_WRITE(ah, AR_TXOP_0_3, 0xFFFFFFFF);
 REG_WRITE(ah, AR_TXOP_4_7, 0xFFFFFFFF);
 REG_WRITE(ah, AR_TXOP_8_11, 0xFFFFFFFF);
 REG_WRITE(ah, AR_TXOP_12_15, 0xFFFFFFFF);

 REGWRITE_BUFFER_FLUSH(ah);
}
